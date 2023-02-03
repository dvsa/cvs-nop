--liquibase formatted sql
--changeset liquibase:2 -multiple-tables:1 endDelimiter:;
ALTER TABLE vehicle MODIFY createdAt DATETIME(6), ALGORITHM=COPY, LOCK=NONE;
ALTER TABLE technical_record MODIFY createdAt DATETIME(6), ALGORITHM=COPY, LOCK=NONE;
ALTER TABLE technical_record MODIFY lastUpdatedAt DATETIME(6), ALGORITHM=COPY, LOCK=NONE;
ALTER TABLE test_result MODIFY createdAt DATETIME(6), ALGORITHM=COPY, LOCK=NONE;
ALTER TABLE test_result MODIFY lastUpdatedAt DATETIME(6), ALGORITHM=COPY, LOCK=NONE;
ALTER TABLE test_result MODIFY testTypeStartTimestamp DATETIME(6), ALGORITHM=COPY, LOCK=NONE;
ALTER TABLE test_result MODIFY testTypeEndTimestamp DATETIME(6), ALGORITHM=COPY, LOCK=NONE;