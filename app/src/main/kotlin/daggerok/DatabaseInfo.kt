package daggerok

import org.slf4j.LoggerFactory
import org.springframework.boot.ApplicationRunner
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import javax.sql.DataSource

@Configuration
class DatabaseInfo {

  companion object {
    private val log = LoggerFactory.getLogger(DatabaseInfo::class.java)
  }

  @Bean
  fun runner(dataSource: DataSource): ApplicationRunner = ApplicationRunner {

    val metaData = dataSource.connection.metaData
    log.warn("""
      ${metaData.driverName}
      ${metaData.driverVersion}
      ${metaData.databaseProductVersion}
      ${metaData.url}
      ${metaData.userName}
    """.trimIndent())
  }
}
