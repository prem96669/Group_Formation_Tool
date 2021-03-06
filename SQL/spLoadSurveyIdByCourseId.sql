USE `CSCI5308_1_DEVINT`;
DROP procedure IF EXISTS `spLoadSurveyIdByCourseId`;

DELIMITER $$
USE `CSCI5308_1_DEVINT`$$
CREATE DEFINER=`CSCI5308_1_DEVINT_USER`@`%` PROCEDURE `spLoadSurveyIdByCourseId`(
	IN cid BIGINT
)
BEGIN
	SELECT id from Survey
    WHERE Survey.courseID = cid;
END$$

DELIMITER ;

