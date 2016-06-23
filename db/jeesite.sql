/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.23 : Database - jeesite
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jeesite` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jeesite`;

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('45750d9c023e46a4ac2c9fac1a32a1c0',1,'test_audit.bpmn20.xml','36b766f3413e48f79e943333ea85efb6','<?xml version=\'1.0\' encoding=\'UTF-8\'?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\r\n  <process id=\"test_audit\" name=\"æµç¨‹å®¡æ‰¹æµ‹è¯•æµç¨‹\" isExecutable=\"true\">\r\n    <startEvent id=\"start\" name=\"å¯åŠ¨å®¡æ‰¹\" activiti:initiator=\"apply\" activiti:formKey=\"/oa/testAudit/form\"/>\r\n    <endEvent id=\"end\" name=\"ç»“æŸå®¡æ‰¹\"/>\r\n    <userTask id=\"modify\" name=\"å‘˜å·¥è–ªé…¬æ¡£çº§ä¿®æ”¹\" activiti:assignee=\"${apply}\"/>\r\n    <userTask id=\"audit\" name=\"è–ªé…¬ä¸»ç®¡åˆå®¡\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\"/>\r\n    <userTask id=\"audit2\" name=\"é›†å›¢äººåŠ›èµ„æºéƒ¨éƒ¨é•¿å®¡æ ¸\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\"/>\r\n    <sequenceFlow id=\"sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\" sourceRef=\"audit2\" targetRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\"/>\r\n    <userTask id=\"audit3\" name=\"é›†å›¢äººåŠ›èµ„æºéƒ¨åˆ†ç®¡é¢†å¯¼å®¡æ ¸\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\"/>\r\n    <sequenceFlow id=\"sid-3DBCD661-5720-4480-8156-748BE0275FEF\" sourceRef=\"audit3\" targetRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\"/>\r\n    <userTask id=\"audit4\" name=\"é›†å›¢æ€»ç»ç†å®¡æ‰¹\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\"/>\r\n    <userTask id=\"apply_end\" name=\"è–ªé…¬æ¡£çº§å…‘ç°\" activiti:assignee=\"thinkgem\"/>\r\n    <sequenceFlow id=\"sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\" sourceRef=\"audit4\" targetRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\"/>\r\n    <sequenceFlow id=\"sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\" sourceRef=\"audit\" targetRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\"/>\r\n    <sequenceFlow id=\"sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\" sourceRef=\"start\" targetRef=\"audit\"/>\r\n    <sequenceFlow id=\"sid-7D723190-1432-411D-A4A4-774225E54CD9\" name=\"æ˜¯\" sourceRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" targetRef=\"apply_end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-D44CAD43-0271-4920-A524-9B8533E52550\" name=\"æ˜¯\" sourceRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" targetRef=\"audit4\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\" name=\"å¦\" sourceRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <exclusiveGateway id=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\"/>\r\n    <sequenceFlow id=\"sid-163DBC60-DBC9-438B-971A-67738FB7715A\" sourceRef=\"modify\" targetRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\"/>\r\n    <sequenceFlow id=\"sid-72258A41-203E-428C-B71D-CA3506252D73\" name=\"æ˜¯\" sourceRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" targetRef=\"audit2\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\" name=\"é‡æ–°ç”³è¯·\" sourceRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" targetRef=\"audit\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-A7589084-4623-4FEA-A774-00A70DDC1D20\" name=\"æ˜¯\" sourceRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" targetRef=\"audit3\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-FA618636-3708-4D0C-8514-29A4BB8BC926\" name=\"å¦\" sourceRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\" name=\"å¦\" sourceRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-35CC8C6C-1067-4398-991C-CCF955115965\" name=\"å¦\" sourceRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\" sourceRef=\"apply_end\" targetRef=\"end\"/>\r\n    <sequenceFlow id=\"sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\" name=\"é”€æ¯\" sourceRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" targetRef=\"end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n  </process>\r\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_test_audit\">\r\n    <bpmndi:BPMNPlane bpmnElement=\"test_audit\" id=\"BPMNPlane_test_audit\">\r\n      <bpmndi:BPMNShape bpmnElement=\"start\" id=\"BPMNShape_start\">\r\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"30.0\" y=\"245.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"end\" id=\"BPMNShape_end\">\r\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"975.0\" y=\"356.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"modify\" id=\"BPMNShape_modify\">\r\n        <omgdc:Bounds height=\"58.0\" width=\"102.0\" x=\"209.0\" y=\"135.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit\" id=\"BPMNShape_audit\">\r\n        <omgdc:Bounds height=\"57.0\" width=\"96.0\" x=\"105.0\" y=\"231.5\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" id=\"BPMNShape_sid-C28BB5F6-013D-4570-B432-61B380C1F46F\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"240.0\" y=\"240.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit2\" id=\"BPMNShape_audit2\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"210.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" id=\"BPMNShape_sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"345.0\" y=\"350.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit3\" id=\"BPMNShape_audit3\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" id=\"BPMNShape_sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"555.0\" y=\"350.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit4\" id=\"BPMNShape_audit4\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"630.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" id=\"BPMNShape_sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"765.0\" y=\"350.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"apply_end\" id=\"BPMNShape_apply_end\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"840.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" id=\"BPMNShape_sid-5FED02D6-C388-48C6-870E-097DB2131EA0\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"240.0\" y=\"45.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-3DBCD661-5720-4480-8156-748BE0275FEF\" id=\"BPMNEdge_sid-3DBCD661-5720-4480-8156-748BE0275FEF\">\r\n        <omgdi:waypoint x=\"520.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"555.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\" id=\"BPMNEdge_sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\">\r\n        <omgdi:waypoint x=\"280.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"989.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"989.0\" y=\"356.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\" id=\"BPMNEdge_sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\">\r\n        <omgdi:waypoint x=\"240.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"153.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"153.0\" y=\"231.5\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-A7589084-4623-4FEA-A774-00A70DDC1D20\" id=\"BPMNEdge_sid-A7589084-4623-4FEA-A774-00A70DDC1D20\">\r\n        <omgdi:waypoint x=\"385.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"420.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-35CC8C6C-1067-4398-991C-CCF955115965\" id=\"BPMNEdge_sid-35CC8C6C-1067-4398-991C-CCF955115965\">\r\n        <omgdi:waypoint x=\"785.0\" y=\"350.0\"/>\r\n        <omgdi:waypoint x=\"785.0\" y=\"164.0\"/>\r\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\" id=\"BPMNEdge_sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\">\r\n        <omgdi:waypoint x=\"310.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"345.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7D723190-1432-411D-A4A4-774225E54CD9\" id=\"BPMNEdge_sid-7D723190-1432-411D-A4A4-774225E54CD9\">\r\n        <omgdi:waypoint x=\"805.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"840.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\" id=\"BPMNEdge_sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\">\r\n        <omgdi:waypoint x=\"201.0\" y=\"260.0\"/>\r\n        <omgdi:waypoint x=\"240.0\" y=\"260.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-D44CAD43-0271-4920-A524-9B8533E52550\" id=\"BPMNEdge_sid-D44CAD43-0271-4920-A524-9B8533E52550\">\r\n        <omgdi:waypoint x=\"595.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"630.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FA618636-3708-4D0C-8514-29A4BB8BC926\" id=\"BPMNEdge_sid-FA618636-3708-4D0C-8514-29A4BB8BC926\">\r\n        <omgdi:waypoint x=\"365.0\" y=\"350.0\"/>\r\n        <omgdi:waypoint x=\"365.0\" y=\"164.0\"/>\r\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\" id=\"BPMNEdge_sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\">\r\n        <omgdi:waypoint x=\"730.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"765.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\" id=\"BPMNEdge_sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\">\r\n        <omgdi:waypoint x=\"60.0\" y=\"260.0\"/>\r\n        <omgdi:waypoint x=\"105.0\" y=\"260.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\" id=\"BPMNEdge_sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\">\r\n        <omgdi:waypoint x=\"260.0\" y=\"240.0\"/>\r\n        <omgdi:waypoint x=\"260.0\" y=\"193.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-163DBC60-DBC9-438B-971A-67738FB7715A\" id=\"BPMNEdge_sid-163DBC60-DBC9-438B-971A-67738FB7715A\">\r\n        <omgdi:waypoint x=\"260.0\" y=\"135.0\"/>\r\n        <omgdi:waypoint x=\"260.0\" y=\"85.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\" id=\"BPMNEdge_sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\">\r\n        <omgdi:waypoint x=\"940.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"975.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\" id=\"BPMNEdge_sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\">\r\n        <omgdi:waypoint x=\"575.0\" y=\"350.0\"/>\r\n        <omgdi:waypoint x=\"575.0\" y=\"164.0\"/>\r\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-72258A41-203E-428C-B71D-CA3506252D73\" id=\"BPMNEdge_sid-72258A41-203E-428C-B71D-CA3506252D73\">\r\n        <omgdi:waypoint x=\"260.0\" y=\"280.0\"/>\r\n        <omgdi:waypoint x=\"260.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>',0),('4a61d6bbfdb042d997d0188faaf6a8b0',1,'test_audit.png','36b766f3413e48f79e943333ea85efb6','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0Ü\0\0|\0\0\0=Ó³Ú\0\0SâIDATxÚíİ|TõÿÿS Š·¿h©Ë²ülêeÕ®Z1†‹4–X â­K]Š¬RVV©\"ÔZ/À\"\Z1…c\nÄ€‘†šD.IácŒ1f¥˜EÄÒcã÷>ß9ç03™I2I˜ÌL^ÏÇãóÈ\\Î\\2çû>s>sÎœ1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€î§/\0\0\0\0\0+Á,eı\0\0\0\0\0 Ş¬/ÌJ²şá%\0\0\0\0 sšm»É–-ÜŸÑt\0\0\0\0ĞyÍvk—\0\0\0\0€V$´ÒTÛ×ón\0\0\0\0\0‚l¶[k¦ÙÒ\r\0\0\0\0@ÅÁm¹vz\0\0\0\0\0ºm³=¦·«£é\0\0\0\0 óšíÎº=\0\0\0\0\0Q§µ¤…ú~\0\0\0\0\0ˆšf»³vgK7\0\0\0\0 Ûó=àÙ÷ÌºÓúßÛq 5\0\0\0\0@·o¶Çx4ÍËÌRÖß¶6İnGÓ\r\0\0\0\0èöÍ¶¸ÓjšUM·g³m×DëùN7\0\0\0\0 ÛÔûk[jºıMŸêgz¾Ó\r\0\0\0\0è6ÍvBM´¿¦»­Í¶oÓÍîå\0\0\0\0€¨ÓÖ¦·µ¦;ØfÛóñ?3ØÒ\r\0\0\0\0ˆÂf»­Ín ¦»G;›mßé\0\0\0\0tÛf»¥¦»ªÍvGŸ\0\0\0\0\0a££[”ı5İi¶}›n¾Ó\r\0\0\0\0],Î¬ÇÍÊ6k§Õ¬)ªM•ÔÁ×^v#÷İ²]e]ŞIÌŠ¢(Š¢(*ÊªÎ¬j³rÍzÆpohêE;‡pÔ×\Z¤ŸšUdÖ³Æ™u±Y}xyÚ¤µ£’·¦¥-Ümùî@ØÂ\r\0\0€h$}Ê Ã½‡©ô2[Í:h¸76õãåA¸˜l5Ú‹Íº€—£C¤¹­3NÌw¸ÛÓtón\0\0\0t\'ÌJ¶Ögòr +Éîo˜•o¸·d£óšî`¶(úé/G)¦éæ(å\0\0\0è®dËw¹áşšìé¼è\nÒlg|ÏáD6İ­5»­ıÎvk¿ÓÈƒßá\0\0@÷ÖÇêw²éyj²y>ï„jmskÍ¶ÑÎ¦ÛŞ­}³\0\0\0\04İzK÷#¼9@š|g›İÈO¼@[ºÛÚlÛtÛG³\r\0\0\0¸Éîå²÷\'RCHÈü’yB&Áh¾{÷Fğ¿³í¯éèó8|g\0\0\0hNúŸ$^„‚lİæhä¡oº=¤æÙ<·¥Ù6Z¹?ı\0\0\0&G/—Ÿã+µ8¡â÷ïl#ô|w/—fy¢üO}ùŞ®£¿ÿ\r\0\0\0t[YgÆ‰ö”YsxÂ¦éî(»«\0\0\0hNú gxp\"É!ñ9 Vt4İİ¼\0\0\0ÑLÖ›syp\"í48:y8èènàìF\0\0\0GV^ÍË€Iš´>¼aÕt»…š¤\0\0\0Á“>¨—\'’â%+ÁîÎnä\0\0\0\0ı`èä&zˆáşDïà\0\0\0ôC`€¡¬f:¡…ë?£Ù\0\0\0è‡À\0Cğméf7r\0\0\0€~0trÓM³\r\0\0\0Ğ†Nnº“h¶\0\0\0ú!0ÀĞ¹¦YóŠŸş\0\0\0è‡À\0C\'Ê²æU/^\n\0\0\0€~0t8³\\[¸\0\0\0ú!0ÀĞ©2­ù$µ“—\0\0\0 7Ä8¾uÛ.š\0\0\0Ğ†Êòi¶í­Ü|—\0\0\0 íäoë¶]ãxy\0\0\0\0ú!0ÀĞ>Ùšm©\"^\0\0\0€~0¯¥­Û|—\0\0\0 í”ÕJ³ÍË\0\0\0ú!0ÀÀ¼\0\0\0XÇÌ+\0\0\0€ul€Æ¼\0\0\0À:6``^\0\0\0¬cƒæ\0\0\0À:6À\0c^\0\0\0`00¯\0\0\0\0Ö±Á\0ó\n\0\0\0``€1¯\0\0\0\0°\r˜W\0\0\0\0ëØ`€y\0\0\0°\r0À˜W\0\0\0\0XÇÌ+\0\0\0€ul0ÀÀ¼\0\0\0XÇ`Ì+\0\0\0\0¬cƒæ\0\0\0À:6``^\0\0\0¬c0æ\0\0\0\0Ö±Á\0ó\n\0\0\0`00¯\0\0\0\0Ö±ó\n\0\0\0\0ëØ`€y\0\0\0°\r˜W\0\0\0\0ëØ\0Œy\0\0\0°\r0À˜W¼\0\0\0\0ëØ`€y\0\0\0°\r˜W\0\0\0\0ëØ\0Œy\0\0\0€ul0ÀÀ¼\0\0\0XÇÌ+\0\0\0€ul€Æ¼\0\0\0À:6``^\0\0\0¬cƒæ\0\0\0À:6À\0c^\0\0\0`00¯\0\0\0\0Ö±Á\0ó\n\0\0\0``€1¯\0\0\0\0°\r˜W\0\0\0\0ëØ`€y\0\0\0°\r0À˜W\0\0\0\0XÇ,¤ÿ°R½SRRfNœ8qolllCïŞ½•õ:PP={öüîüóÏÿløğáÍ¿#‰\0\0\0è‡À\0ë–-[vÏÈ‘#ëcbbÔœ9³U~~jhøÊìÁ¿£:©äõ,**T‰‰Ï©6öïß¯ùÒ_LÔ\0\0\0@?X”JM}e}¿~ıTRÒÊåj4›Ã&*•œ¼HõéÓç«SO=õ&â\0\0\0ú!0À¢°Ù¾à‚TQÑv³	ü–\nq•——©¾}ûşÃœcˆ\0\0\0è‡À\0‹Ë–-½G¶lm3›?—W-]ú’\Z3&A\Zu½ºşúkÔ\rñ#Uò¢¤fÓQ¯òò½ê”SNùÂ`÷r\0\0\0ĞÿœR½G¼¦>)éyóä7^µbùR5úç£Ô­·ŒÕ5vÌ*>şZ5tèj‘nº¿¡:¹çŞ«W¯<b\0\0\0ú!0À\"\\JÊÂ™11?R.W½Ùğ5zUÂ¨xİhßpÃH§~ö³ëÔğaWšMwl³é©Î©³Ï>ûSsÖÄ=\0\0\0ĞÁ&Nœ°wÎœ\'ÍFïëf5bxœzaÁ|•õV†Jy1IoÙ¾jÄP}¹œv¹¾ô{;ªc5mÚ½;ÍY“Hô\0\0\0@?X‹ÒŸŸc6z\rÍêî»\'ªƒıTmİòÊşÓµêÕTµ>sú¸úCõ?S\'«o¿ıÒïí¨Õ»ïæ0gÍN¢\0\0\0ú!0À\"XïŞ½UCÃçf£Wß¬›õ*.Ú¢voU»w•è’Ó;vlW=ößÛP/™æ¬q=\0\0\0ĞáÿŸR_6+—ëïjÖ¬™jÊo&©’’BUşŞ]»víPÓîûo5ãÁûÔ×_î÷¶TÇ‹\0\0\0è‡À\0‹Š†»Î«\Z?WëÖ½¦bcªª?ªTN¿Ï«JK‹ÕË/U¯¯NU\r\rŸ5»=ÕñbÁ\0\0\0ú!0À¢¢áş‡Sß}wL½µ!]\r\Z«jª«Ô{e»Uîæ*óÍ?ª´×WªÔW^2›ñ4½{ù•W^®ÒÓW¨o¿ıÂë>¨6\0\0\0Ğ\r÷1§¶nÙ¤k[šì¼¼ÍêÍŒtİh¯X¾D½¼x‘JzáYõÌ¼§õÔ¿´P]{Íµñí5^÷Au¼X°\0\0€~°¨h¸ÿîÔc³~§D.õ²ÔÅº–¼œ¬’-PÏ\'ÎSÿ;÷IõÄïQ3güV=ùÄ£f³©~7ó~¯û :^,Ø\0\0\0@?XT4Ü_8%\r·üØí·İ¬ŞH{U7ÚÒ|?;š;ç	õÜ³suÓ-Mø˜Ñ	jsÎÛVÃıÕ‰Å‚\r\0\0\0ôC`€EEÃ}Ô©½{·©G™¡~yû8İPË®äş*.nˆúõ„ñzkwié»^÷Au¼X°\0\0€~°¨h¸?÷*×7S_~ù©J|îi•0ê:5bø•jèĞ+TÜ•CÔP³Ñ¾æêáêûïQÇıEOë{{ªãÅ‚\r\0\0\0ôC`€EEÃ}„\n³bÁ\0\0\0ú!0À¢¢áşŒ\n³bÁ\0\0\0ú!0À¢¢á>L…Y±`\0\0\0ı`QÑpÿ\n³bÁ\0\0\0ú!0À¢¢á>D…Y±`\0\0\0ı`QÑp¤Â¬X°\0\0€~°¨h¸PaVmwO˜Õ@<\0\0@?XX7Ü¥Â¬ZwÒhm]ÏÂ\0\0\0ôC`€…wÃ]ë·äº…g«ÄÄÇuíÛW¬/+)Ùğ6Á–Ü_ffªs:\'çu}ººz[ÀÛ”—¿£öìÉñz¾ÏKÎÏš5­ÙcÍŸ?KŸ>th×uUU[ôõG”7{¼ÚÚÒf—UVèékj\nõù\r–«3Î8½İÿ»¿ëZi´i¸\0\0@?Xø7ÜŸú­ã\r¡÷eYY+¼.»ùæ5yò¯Ì†¼H—œ¾÷Ş;ór›¹sr¦ïÙ³§JNã\\çnæİ§ËËÿl6Îo«3Ï<CO[]½U?İ`nÜøª\Z?şjÂ„[ôi¹¬¶v§ş+Óz>Ï•+_pNïß¿Cÿ­¬ÌWkõiyLÏégÏ©}_ÿÏr~Ê”ÿtÃ¾/Ïéü·^ç/¿ü\'zúÑ£¯×ÏÏ¾îÆGªéÓ£ïÜsÿEÍ˜1ÅlğßÕ·©¨ÈøÚ[ógáŞu\\(\0\0\0€~°ğm¸÷û-»©LL|L—İoÙ².àm¤.¼ğÇ*6öÒ§±ï_šÏÃ‡÷èó”ê¿yyéúºúú*}^[ÎŸrJoİ|o6Ãw˜ÍíJ}ù±cX[¸³Ô¡C»Ë—,™¯ŸKFÆµ`Áïõeuu•úoAÁ\ZçyH.—55íÓ«ªÜ[¯åù¬Y³XmØ°ÌëyÛÓeg¯R¥¥Unnš~Îr^şû±ııÏò?ÈëwÎ9?PÃ†]®Ÿ«ı|÷ï/özmÿ[´i¸\0\0@?Xä4ÜiVee›Ô=Ùª±ñc¯ª­İ¡D·±ëxÃíÿú‚‚?ªk¯S99¯©””9ê´ÓN5›æ\nuòÉ\'©;î¸Élbß6›ÚOœéíæR¦­«û@¥§¿¨<O-\\ø”¾\\¦w7ÓxİF¦—Ó.W*/ß¬/KM}N?VEÅŸõu‡íÒ—§¥-Rƒ_ ›yûööıÊë §íû^µ*ÉÚú¿Tİ|ó(çqìç“›ûzÀÿ]¶ÜËõ2¼ÆöcÉ}yN×†F›¢(Š¢(wÕ™µÇ¬l³1+Ş¬^¬ÂôC`€…IÃ½¯Y-Y2O]tÑ¿ª-[Ö¨Õ«ÿ ®»n˜š=ûA}^nSXø¦ßÛI¹îK^/eè-Éî-Ëóæ=¤Ùcí^¬¯—óÓ&%=¡øg³©®PÉÉOëË¦N`}Wû^½›º=}ccµó&\\]] ²²–©Wx•\\·mÛ:=}vö«ª¦f‹×ãz+øõmûö=[o–Ë-SkÖ¤è†úô»U|ü}ÙO~2H}¾oy.òá\\nß—L\'×ÅÄP—\\2ØlºW{=–\\çûúXóç³¾5Âsw³™5Æ¬ÇÍÊ5ë YIfõcÑ#i¶’#€÷#€~°¨j¸?iVrù]wıRŸNK[¨·B{^—™¹Äïí¤.¼0Æj¸›_W_ÿõ]çåú~d‹¶œ.+Ëvî÷¬³ÎÔ»\\ïß_è<4©éºÙ–¦UšÛU«^°¾‹½Íù+Ó§¦Î·¶Lo´\Zëµ~ÿ?û8zt¯õ}êÍú|mm‘óÜìiW¯NÒ§Şå\\&Íø7^«O.[¸ğIİh74|¨ÿOÏÇÊÈXìœ—\rššjœıİõœfÏÏg>½\Z ñ7¬¦AVtîañ´;GÉf}aÖL^€÷#€~°ˆn¸ÿ¯Y¹îÛÓÓ§ßåu]fæË~o\'u¼áö}qñ›úöv#+»rWW»·v»\\ÕÍî_Î/^,»“¿¯(Véé‹Ì¦ıbUSãnV*±¾Ã½Şld?V))³­¤åêÛoØ°T7õ“&İ¦Ënöåú††J§y•é\n×©‹.ºP7éî&<Çjæ·6{}Æ½^İzk‚Ù,oÒÿó‘#»Tvö\nëhë¯zMën¸½_‡ÄÄGõYY©~_ÿ\0óËw‹w¸’-\r²…a­Y§³Ú£rÃ½›,9x?è‡À\0‹Ì†»¦Yú\'ÁPõõï[JK7›Ğ5fC[m6¬ËüŞÆ®ã\r·ÿëkkÕòåÏZ?ÓõÙlç©óÎûjîÜÇv7ÜÇŸKrò“º¡İ·o‹n¸å²ÆÆ­­ÄyÖ.àif½ÙlÚ?²šù>ÏÇ8v¬Ìy^rÿ†>`Z‘ÙHg[ßÚïí¥á¶ÿOy\\ù~öwüBßV®_°`–3­\\ôènuÙeÿ¦fÏ®/—×ÔĞßù^å÷ş[™oöïp&ßŸË²Vr\0´O+GÙßIx?è‡À\0‹Ä†ûc¿uäH©õ³]èó›œ­Á\r\rú²Ã‡KÔM7Åëš2e¼Ù<¾ª·Ú{n}Z*--É:Ùz}CWz»Õ,¿£ZC%ü#çúÌÌÅÎóóÃ†ıÔlôSUFFŠJM}F?†}Ü‡¡wñ^êu›òò?©ÂÂµº	–š4éV]r?î&8Çl‚İMë×ï‡ª¬Ì}´¼¼ÕÎó[¼x¶µõ{‰×kcè°=c6ı•ú¹İ{ïuèP±š7o¦úş÷{éûòœVjÕªçÿQCS^û1}ï?ŠVrdË»ókºeK÷#¼\0ïG\0ı`×pW{UNÎ\nİ¼öïÙtïlv½ÜfÚ´‰Îù††÷›M¨\Z?ĞÓËıËı>¼Ãj8_óºwó|ü|II†>ír}há;KŸojªr¦)(xİë6<ª§÷÷<äúââuúô¾}ú¯|w¼¦&OßÏàÁç;ÓÊc¹?0Èôºı…úºmÛÒÕèÑ×ª[oå÷ñä¹Û—WTd««¯¾B7ò¾÷¿zõ¯û¢1&»ó}jpà\Z £9úŒ¼ôC`€E\\ÃıQDUSÓ‡2M¨K{¦Âq\'®IbqtH29x?è‡À\0‹¸†»Š\n³ŠÂq\'G‹•#ÅòT€ä ºSÃı!f¥ãN¾;—À\"è­äàı ,¢\ZîJ*Ì*JÇİã†{W>\0í7‡¼ôC`€ETÃıf¥ãnŒáşi#\0ËQ./Àû@?XÄ4ÜT˜U”;9:ì)@‡sTÍË\0ğ~Ğ1\r÷ûT˜U”;ù-á:)\09È@?t£†»œ\n³ŠâqÇ G\09ÈĞ\Zî÷¨0+\Zn\0ä G\0y,*\Zî2*ÌŠ†\09È@^À\0‹Š†{/fEÃ\r€ä /`€EEÃ½‡\n³¢á@\0r0À¢¢áŞM…YÑp G\09È`îä“Oú®¡¡ÈlòvQaR_}U¸Ïœ5.ò€ä /`€E°Áƒ|(?‰Ùè•RaRë×?ÿ¶9kv’\'\0ä G\0y,‚]uÕeëæÌ™J£F5vìUiæ¬I$O\0È@\0òX0à±œóËµƒf7<ê“=zT˜³&< G\09È`®ÿ–&%=H³5fÌUKÍY’K\0#€ä°è0èÌ3O«/*ZAÓÛ…•Ÿ¿t½9/šu1y@\0r0À¢Gü9çœıwšî®k¶{ôèQcÎ‡1ä	\09È@^À\0‹Â¦û¤“¾lŞ¼û>ç;İ¡ûÎ¶µùÁnĞl³ÀÈ@\0òtë6¨gÏïåœ~ú©‡§L¹e÷¦M/lh(¤1îÄúê«íûä§¿ähäÖÒä;Û“\'\0ä G\0y¬{¸Ô¬9fm5«Áz¨Î)—áşmùé¯8ò€ä /`€!œeYóª/yÈ\0r0ÀĞ9d+±ËšW	¼ä	 G\0È@^À\0CçÈ4ï®½“—ƒ<ä\09È`è¸!Æñ­Ûváe!O\09@\0ò:&Ëh~P2ÙÊÍw¹É@\0#€¼€†vò·uÛ®q¼<ä	 G\0È@^À\0Cûdz«ˆ—‡<ä\09È`^K[·ù.7yÈ\0r0ÀĞNY­4Û±œ<ä\09È``^1\0#€ä00¯À<È@\0ò0À˜W`ä\09È``^1\0#€ä00¯À<È@\0ò0À˜W`ä\09È``^1\0#€ä00¯À<È@\0ò0À˜W`ä G\0È``^1\0#€ä00¯À<È@\0ò0À˜W`ä G\0È``^1\0#€ä00¯À<È@\0ò0À˜W`ä G\0È``^1\0r€ä00¯À<È@\0ò0À˜W`ä G\0ÈNˆ,k@µT;y™X€y#€äÎ³\\­4Ücx™X€y#€ä^vÍv‘Y½x‰X€y#€äŞ\Zîq¼<,À<È@\0ò´Ÿ¿ïrËw·ÙºÍÂ\0Ì#€ä /@øû.7ßİfa\0æ@\0r d\Zlİfa\0æ@\0r ÓÅy4Ü	¼,À<È@\0òtû»Ülİfa\0æ@\0r \ra€±0\0ó G\09È\"g)Õ;%%eæÄ‰÷ÆÆÆ6ôîİ;ĞÏpQ-TÏ=¿;ÿüó?>|øFóïHFæ@\0#€¼tcË–-»gäÈ‘õ111jÎœÙ*??O54|eöàßQA–¼nEE…*1ñ95pàÀÆşıûï5_â‹Y€y#\0ä /İLjê+ëûõë§’’^P.W£Ù46QXÉÉ‹TŸ>}¾:õÔSoba\0æ@\0#€¼t£fû‚.PEEÛÍæğ[êUyy™êÛ·ï?Œîù»á,˜G\09@\0òÒ½,[¶ôÙ²]T´Íl\n]^µtéKjÌ˜5jÔõêúë¯Q7ÄTÉ‹’šMGµ½ÊË÷ªSN9å£ûí^ÎÂ€y#\0ä /İhî(Õ{äÈkê“’7O~ãU+–/U£>JİzËX]cÇÜ¨âã¯UC‡^¡é¦ûª•˜8ÿó^½zå±0\0ó G\0È@^¢TJÊÂ™11?R.W½Ù6zUÂ¨xİhßpÃH§~ö³ëÔğaWšMwl³é©àêì³ÏşÔœq,À<È\0r—(4qâ„½sæ<i6€_7«ÃãÔæ«¬·2TÊ‹IzËöU#†êËå´Ëõ¥ßÛQm«iÓîİiÎ‚D`ä\09ÈKŠÒŸŸc6€\rÍêî»\'ªƒıTmİòÊşÓµêÕTµ>sú¸úCõ?S\'«o¿ıÒïí¨¶Õ»ïæ0gÁN`ä\09ÈKêİ»·jhøÜl\0ë›Õc³RÅE[Ôâ­j÷®]rzÇíê±Çò{ªí%¯»9\\İd¨%XƒRÇ G\0È@^ºÍRêËfårı]Íš5SMùÍ$URR¨ÊßÛ£k×®jÚ}ÿ­f<xŸúúëÏıŞ–j{u“€Ä›%GeO²ş!v,°r€ä¥›4Üu^ÕØø¹Z·î5ûSUıQ¥zpú}^UZZ¬†\\~©z}uªjhø¬Ùí©¶W7H¼O“-[¸?£éf\r#\0ä /İ¤áş‡Sß}wL½µ!]\r\Z«jª«Ô{e»Uîæ*óÍ?ª´×WªÔW^2›ñ4½{ù•W^®ÒÓW¨o¿ıÂë>¨¶W”Ä·Ùnír°ÀÈ\0r—hk¸9µuË&ı[ÛÒdçåmVof¤ëF{Åò%êåÅ‹TÒÏªgæ=­ ¶ø¥…êÚkF¨o¯ñºªíÅIh¥©¶¯ç;İ,°r€Qš—fİgÖZ³ªÍª³pƒYŸ˜•iÖLkº(n¸ÿîÔc³~§D.õ²ÔÅº–¼œ¬’-PÏ\'ÎSÿ;÷IõÄïQ3güV=ùÄ£f³©~7ó~¯û Ú^Qú†ÒÖfš-İ,°r€Q˜—qfåZMö+fİfÖ ³N·®—¿1V#dM—oÖ„èl¸¿pJ\Znù	°Ûo»Y½‘öªn´¥ù~vş5wÎê¹gçê¦[šğ1£Ôæœ·­†ûª…o(ñFp[®ƒ¬à\0ä G\0Â4/ÒDg›Un5Ó½‚¸­4ò›É[Íº º\Zî£Níİ»M=úÈõËÛÇé†Zv%÷WqqCÔ¯\'Œ×[»KKßõºªíeo(íİb-·«£éf\r#\0äˆÜ¼Œ7ë áŞE¼Wîç>ë~¢ek·Ùø}îU®oş¦¾üòS•øÜÓ*aÔujÄğ+ÕĞ¡W¨¸+‡¨¡f£}ÍÕÃÕ÷ß£û‹Ö÷öTÛ+ŠŞP:º{8»—³ÀÈ\0rDh^d%^¾“×I÷w©u“££á>BuQEÉJkHõı€€ä /!2Şjc:ù~c¬ûô-İfã÷ÕEo(}´q¶t³‚#\0äˆ¼HS,»Ç û¿ÔºÿA‘İp¦º¨\"ü\rÅ÷€gß3ëNëo0|oÇÔXÁÈ@\0D@^äHä3OğcÈwº·FvÃı7ª‹*‚ßP|·DK³¼Ìú–ÑtºM7+8\09È€0Î‹üô—¼wk¹»–›ß!ª‹*BßPüíö}§õ¿¨ šnÏfÛ®‰×ónVp\0r#\0aš—Ü®¨K©[¹ÍÆï ÕEo(š`ÍsKM·¿éSıLÏwºYÁÈ@\0„Y^îšõ\nácV`¶~à0¢m\r÷ª‹ª‹ÒÖ±¨ÙN¢‰ö×t·µÙömºÙ½œ€ä@äE¾W½8Ä™hœøï‹ûÂ+«¹Šk¹áşk‡Jî#3s™s:\'\'MŸ®®Şğ6ååï¨={6«’’^÷ãyŞ®}ûv¨“O>©MÏcüø›š]¶fÍ¿Ógg¯VgyF»ÿç””yòÚ…ñØhOÓÛZÓl³íùøŸléf G\09ĞåyYkÖm!~Li²Â°á¶+Ûğ¿UÓlüjƒ®={ªää9f3\\¬ï?1ñqç´4ÓÒ8»›ÙZ³ñŞ¦²²V:ÏeãÆUº10á}Z.«­-ÕeZ\'×rJï€ÏçĞ¡=zšşYßgÿşÿ¤ÒÒ^4›âÿU]ô¯Îã;VÙì~+*òTMM¡æÖ[®&Oş•3}qq–®°pƒ¾lÒ¤_ê¿ò8qq?Õ§¥6lX®Î;ïÜ _Ç.n¸[¾Ív[›İ@Mwv6Û6¾ÓÍ\n@\0r ò\"»w_âÇŒ1ëÓ0n¸=·jğn¸?mwÉígÌ˜¢Ş«Ï8°KÿÍËû£¾®¾ş#}^\Zr»iÎÊZ¡Æ½AM™òŸf³úªÓz÷Ûzúòò?ëæWJ¦‘æ¹_¿êÇ²o3qâmzZ—ëİğÊii´×«k¯ªæÍ{ØyÒxÛÏùÈ‘÷Ô°aCôıØÏË~Ş†ŞZŸêœÎÈXêœ^³f±s²Å]nkŸÿş÷{©Çÿm»^¿0íi¶[jº«:Ğlwôù€€ä /¤Î¬ÓCü˜òx\rĞp{nÕŒs7Üûƒ®‚‚5º©ÍÉYm6³sÕi§j6ÍèFô;Æ©ÒÒª©iŸ3½ı¸2m]]¥JOOQ¯.|Z_.ÓË_¹Îßã]xáUlì¥Ÿ<îèÑ×©I“n7é•jñâyz´4èöerÿiiÉÎmäùÉe••ùª¬,ÇlÜÿOŸÏÎ^å<gyrº¡¡Z•—çšÍz™.¹nåÊôéššmºÑoÏëf\r·ïØèèeMwGšmß¦›ït³‚#€ä¥…TEb)õ—v•Ü¶ª*_ÿ7ï!³ùÜkí¾C_/ç=§MJzBïŠ]W÷JN­/›:õ×úï¬Y÷éİÔ=Öñ†»ùuöãîß_¤ÿï4ÙYYËõ‡ûöªŠŠ?{İî‰\'î×[Üo¿}´Ú²e­ª®~WßşĞ¡]ÎsÎÈXâõ?¤¥-R[[Â—êÓÙÙ¯êÇhïkæ•ÔÁLÈnä¾[¶«¬Ë;\"Éº¯>,cYÁÈ@\0òZláÜ@í4Ü[,í#¸›ß¾ ª¾¾R]~ùOÌ†v…¾Ï;î¸IŸ.+Ûä4¢gu¦:çœè&Xn#—_rÉ`UPğG³Ù~ZÅÄĞ[¤W­zA_·oßvç¯ı8Û¶­S“\'W¹¹«õîäRò8Ë—\'êi]®›=7ûñíóÕú2¹ßé**r×åèÑ2³¡¿DÅÇğš&#ãe¯ó#F\\áüßòÜä´lİ¾ùæQA¿ö}†ñØhí¨ä­iiw[~§;¶p³‚#€èÂ¼ğîÖ›)ãxÃıIĞU\\œi6¶Kô}¯^¤¾@UW8°»ñ]âL/ç/–İÉ+Ô;Tzz²nÚkjì­Ê;­ïpopnÓØø‘súÂctCÜÚó’ûé&MºÍl†—«¬¬eêŒ3Nóšfß¾mú¾¥}TõU*//Íjø·9mèİËWzİ·ı?úàoËõiiæİˆşu“†;ĞØ°›Û:ãÄ|‡»=M7ßáf G\09ĞÅyá(åÇ›š\"³Æ“Ülüş/èª­-TË—?§cşü‡Ìf;_¥{îÜúzwsú²3½œON~J9²Ëlj·š\r÷\"}Ycc•utr÷®éoø}¼ã\rwËÏKîãá‡ïÑa—»q^ÑlZû±kj\nÔáÃ¥ÎóëªªŞq®ó¼ïøøáºÑ6ôîÿĞ§ûö=KÍ˜1¹]¯c7Ü­\rß&·­[”ıô—¿£”Óts”rVp\0r#\0a~‡»å­–>\rwMĞeèïjZMjJIqü¬©©Ú¹ŞİpŸ~Ø0ù­e*#ã%•šúŒŞåÜ¾NîCşfe½â÷ñ7Üîó.×GÖ®à»›=/ÏÇµ/ów¿õõï[[µ·Xßß¦Ÿ‡\\.»¼Ëóméÿ—ÿ¥=¯ïı„ñØğ×t·Öì¶ö;Û­ıNw C~‡›€ä@Xäe€YŸÙPt”ìÆ‰3H©ƒªÆÆJÕĞPa6±KuÃtøp‰ş›—·Ú™Æİä.õ:_Rò¦>ír¹·,—•½­Ï75}äLSPf6¼åêæ›¦æÎ}P%&>b6Äïª©SÿSM›6QŸ–*,\\«N;íuìØ^¯çf8»”ßªkãÆT«¡§ÙÿQW÷uà¶ÿÔÏÉ~.òa€ïÿã[†Şj¾<è×ÎßıDĞXimskÍ¶ÑÎ¦ÛŞ­}ËSVp\0r#\0á‘—\\#t[Ã¤!Ø\Z©3H©êWSSUDİï‰zœ|C	´¥»­Ív°M·ıx4Û¬à\0ä G\0Â(/²‚^n„f+·ì¢;!rî¨.ª}C‘-İ¾»wßiÿ;Ûşšî‰>Ãw¶YÁÈ@\0„i^òÿ½jù¾øV#´»¯wrÃ]EuQEğŠïO†y6Ïmi¶VnÇO±‚#€ó¼Ä˜uĞ¬¸tÿ—Z÷?(’gRR]Tş†â»{¹4ËàêË÷vııo°‚#€ä%DÆî¨Åœ€f^îwB¤Ï ¥*©.ª(xCéìßÅö·»:XÁÈ@\0„q^&YÍqgmé¾Ôº¿G¢a)õÕE%o(ÕtwvóVp\0r#€¼„ˆlé–-gòî|ßZ¾³}Ğjâ£b)UAuQEÑJGwg7rØ\09@€ÏKŒáş¹°òv¬ØËÖ·\"Ã}€´AÑ4ƒ”zŸê¢Š²7”öUœ¤±ÀÈ\0rDQ^n³\ZoÙ-|±áş	±Ì:İºşt«9— Ñ¬j«ÑdDîÑÈ[h¸Ë©.ª(|C	v·pv#g\r#\0äˆÒ¼0ë³ÖZÍwƒõ„åï§feî]Ğc¢y)õÕE¥o(mm¢‡˜Ug}àØ\09@\0ò\rwÕEÅI°šé„®ÿŒf›6@\0#€¼DyÃ½—ê¢Šò€ÚÒÍnä,°r€ä¥»4Ü{¨.ªnßæšf›6@\0#€¼t\'Ÿ|Òw\r\rÅfó·›\nq}õUá>s¸ºÁ0³›ì$šmØ\09@\0òÒmüãCùùKÍpâZ¿ş…·ÍY°³›µkaÀO±ÀÈ\0r—îáª«.[7gÎT³,¥B\\cÇ^•f¸v…˜G\09@\0òmøAì€ç|ãrí 	m}Ò£G\nsÄ±0\0ó G\0È@^¢Tÿş?,MJz&8„5fÌUKÍ—>—…˜G\09@\0òİyæiõEE+h†CPùùK×›¯ùA³.fa\0æ@\0#€¼D¿øsÎ9ûï4İ\'¾ÙîÑ£GÑ=ÔÍÂ€y#\0ä /İ·é>é¤ï›7ï¾ÏùNwçgÛÚü Ñ}‹…ó G\0È@^ºµA={~/çôÓO=<eÊ-»7mzñ`CC!\rs;ê«¯¶ï[¿şù·åhäÖÒä;Û³0\0ó G\0È@^º·KÍšcÖV³\Z¬IW.Ãı;ÛòÓ_q)Ì#€ G\0yÀÂ€y€ä /\0X€y#€ä\00\0r€ä\0æ\0r#€¼\0`a\0æ@\0r\0,À<È\0r\0,˜G\0È@\0ò€…˜G\09È@^\0°0\0ó G\0È@^\0°0` G\09È\0`ä G\0yÀÂ\0Ì#€ G\0yÀÂ€y€ä /\0X€y#€ä\00\0r#\0ä\0æ\0r#€¼\0`a\0æ@\0r\0,À<È@\0\0,˜G\0È@\0ò€…˜G\09È@^\0°0\0ó G\09@^\0°0`ä\09È\0`ä G\0yÀÂ\0Ì#€ä\0yÀÂ€y#\0ä /\0X0x	\0r#€¼\0`a\0æ@\0r\0`aÀ<È\0r\0,˜G\0È@\0ò€…˜G\09È@^\0°0\0ó G\0È@^\0´[–ş–j\'/l€ G\0yœ!f¹Zi¸Çğ2±ÀÈ\0r\0ÁËn¡Ù.2«/l€ G\0y¼!-4ÜãxyX`ä\09È€öó÷]nùî6[·Y`ä\09È€ğ÷]n¾»Í G\0È@^\0t‚Lƒ­Û,°r€ä@§‹óh¸x9X`ä\09È€Îc—›­Û,°r€ä@\'\ZÂÂ€6@\0#€¼\0áŸ*¥z§¤¤Ìœ8qâŞØØØ†Ş½{úù-*ˆêÙ³çwçŸşgÃ‡ßhşÉ›Qäˆ‘#rDÈ9\"/@7²lÙ²{FY£æÌ™­òóóTCÃWæ²ú;ªƒ%¯cQQ¡JL|N\r8°±ÿş{Í—übVpÈEÈ9\"Gäˆ‘#òD¹ÔÔWÖ÷ë×O%%½ \\®FsaÒDÀJN^¤úôéóÕ©§z+8äˆ\"Gäˆ‘#rDÈy¢x¡|Á¨¢¢íæBã[*DU^^¦úöíû£{ü~¸\"G9\"Gäˆ‘#rDÈĞ­,[¶ôù´¨h›¹°pyÕÒ¥/©1cÔ¨Q×«ë¯¿Fİ?R%/Jj6Õş*/ß«N9å”/ŒèßO‘#rDÈ9\"Gäˆ‘#òtr ‘#¯©OJzŞ<ùW­X¾Tşù(uë-cus£Š¿V\rz…Z¤ÎßPT‰‰ó?ïÕ«W+8äˆ\"Gäˆ‘#rDÈy¢DJÊÂ™11?R.W½¹€hôª„Qñz|Ã\r#úÙÏ®SÃ‡]i.œc›MOu¬Î>ûìOÍYÇ\n9¢È9\"Gäˆ‘#rD^€(0qâ„½sæ<i.¾nV#†Ç©ÌWYoe¨”“ô\' Wª/—Ó.×—~oGµ¯¦M»w§9KYÁ!G9\"Gäˆ‘#rDÈbc‡4äçç˜††fu÷İÕÁ¿~ª¶nyGeÿiƒZõjªZŸ¹F}\\ı¡úŸ©“Õ·ß~é÷vTûêİws˜³d\'+8äˆ\"Gäˆ‘#rDÈy¢@ïŞ½UCÃçæ‚¡¾Y=6ë!U\\´Eí(Şªvï*Ñ%§wìØ®{ì!¿·¡Ú_2ÌYâb‡Qäˆ‘#rDÈ9\"/@”¼é(õe³r¹ş®fÍš©¦üf’*))TåïíÑµk×5í¾ÿV3¼O}ıõç~oKµ¿¢|¡¦È9\"Gäˆ‘#rDÈyºYÃ]çUŸ«uë^S±±?UÕUª§ßçU¥¥ÅjÈå—ª×W§ª††Ïšİj±‚C(rDÈ9\"Gäˆ‘ ªÌÿpê»ï©·6¤«aCcUMu•z¯l·Êİ¼Qe¾ùG•öúJ•úÊKæB;Mï†tå•—«ôôêÛo¿ğºªıÅ\n9¢È9\"Gäˆ‘#rD^€¨Z0sjë–Mú7eaœ—·Y½™‘®È+–/Q//^¤’^xV=3ïi} Å/-T×^3Bm|{×}Pí/VpÈEÈ9\"Gäˆ‘#òDÕ‚ùïN=6ëwúˆ•²\0^–ºX×’—“Uò¢êùÄyêç>©øı#jæŒßª\'ŸxÔ\\(gªßÍ¼ßë>¨ö+8äˆ\"Gäˆ‘#rDÈy¢jÁü…S²`–ŸŠ¸ı¶›Õi¯ê²,¤Ÿ?GÍó„zîÙ¹zá,ë1£Ôæœ·­óT\'+8äˆ\"Gäˆ‘#rDÈy¢jÁ|Ô©½{·©G™¡~yû8½à•]üU\\Üõë	ãõ§¢¥¥ïzİÕşb‡Qäˆ‘#rDÈ9ê\"YÖsn©v\Z\0‚]0îU®oş¦¾üòS•øÜÓ*aÔujÄğ+ÕĞ¡W¨¸+‡¨¡æùš«‡«î¿G;ö=­ïí©ö+8äˆ\"Gäˆ‘#rDÈQb¸;¼¥†{íô‚ù&Å\n9¢È9¢È9\"Gä¨e·Ğl™Õ‹ö	zÁü&Å\n9¢È9¢È9\"Gä¨\ri¡áGë´kÁ|˜\n“Šâ•€ëK G9\"Gäˆ‘#rDÂš¿ïrËw·Ùº\r´oÁü7*L*JWpâÍúÂ¬$ëïrD‘#rDÈ9\"Gä(lùû.7ßİÚ¿`>D…IEá\nN¼ÏJlQø,\nÚŒ_rDÈ9\"GäˆŠ¦e\Zlİ:kÁ|\n“Š²œø\0[â£pËã—‘#rDÈ9¢¢)Gq\rw´~Õ‚ù\0&E+8	­¬ÄØ×\'#Š‘#rDÈ9\"GaÉş.7[·-˜ÿJ…IEÉ\nN[W^¢iËã—‘#rDÈ9¢\"=GÌºÏ¬µfU›Uoı\rf}b¸w3ŸiM íæZ*L*\nVpâƒÜRìôäˆ\"Gäˆ\"Gäˆ‘£Î%?÷•k5Öª•oÖZ) MæO©0©_Áiï¹]]„¯ä0~É9\"Gäˆ‘#*ÒrcVvM¶¿ÚjÖ´T@‹æıT˜T¯àttw¼HßñKÈ9\"GäˆQ‘”£ñ†ûHıÍ³ËjÀ\'›u±Y}­iû˜5Èºìnî»%\\>¨bk7xÁü*L*BWpZ; M¨ï‡‘#rD(rD(rØÃûw¶åt¢áŞâİı¬é}«{2­àwÁ¼\n“ŠÀœÎ>ºk¤nY`ü’#rDÈ9\"GT$äh¼O£\\i¸·f·‡Ü®Ü§éfK7Ğ|ÁüI›K¦ß¶m­ª¬ü³>}àÀ¿Óåå¥©#†¨É“ÿCMšt›WmÜ¸\\ee-S-=¶\\7mÚm~^«W\'©óÎ;7àõ55ïêû¬¯ÿ@×†\r¯¨Ïs®ß·o›×ô%%TYY¶>-?jVréÍ÷òåÏ9çëê*‚~}#hìø`æ{fİiı\r†ïí\"ñÀ5äˆ‘£çˆ:±EÈ•9Š1¼w#—ï_÷íà}Êîæ¹†÷îåƒh±\0¯óÿµ©JKßÒAºùæQze_Nß{ï¯õé3Ï<C-\\ø„3­œ—é<oß¿ÿ?©k¯Ó§«TK-×İtÓ\rm~nıúıP]}ul‹ÓHc ÓTWçëûn6,©Îÿâ^Á÷~oè¿\'Ş¢¶lù£FÎ?õÔıê;~¡rs_ÓÓ–”¬××/Xğ˜¾^.ÏÈX¬.ºèB}›}û¶êË/ÓâsŒ ßOşeåd™õü—±’èv‘¶’CÈ9\na¨_äˆQQ™#ÏÆ¸²šmÏ¦»Ü§‘p|Á\\Ój;V¦tùå;—ÉùÌÌ—õé={²¼¦w7\n?óº,=}‘¹R¾Ì\\iŞb6\nª–[®“Æ\"ĞõMMÕú>ì:ãŒÓÔèÑ#óGîV……ëœéKJ2u3Q\\œ¡.»ìßôí{öì©WäåùÔ×¿ïLër}¤ÿÊe2½<—Ã‡wªÔÔgÔi§ªÿ‡5k’ULÌ\0ç6r½¼öãËmöïß¦ÿÊôöëçû:ùû¿#påÆ°¶xîNÔ–•Ï•»&z\\Iß¡#Gäˆ…(GThŠ‘#*êr4ÎğşÎöÅ|ÿŞ»ª³k9p|Áüq‹UW÷\Z0 ŸÊÊZªN9¥·züñ{Unî«:L“&İªOŸ{n¯Ûôí{–ÊÎ^®FºJM™2Ş\\YNÕÓŸvÚ)fÃ°PUW¿£=vS“{7Si6ZzN²«íØ±×9ÏeÂ„›ôi©yófzİiézkå}«>Ÿ“³RŸ·#GJi+*6éËjk·«¼¼ÕÎõîÆh±FÃ÷ùÉõwİu»ª¬ÌÑ§+õß}ûÜ»áÊshíµ€œ@+şVVZZÉñ7}ªŸé#å;täˆ‘£äˆ\n]‘#rDE]<·n\' ÇxÆ`+7àoÁ\\İbÕÕ•é¿7¾¢‚œœæÊoSaá\ZU^¾QwŞÿóºÍñ-sîóyy¯Y»·Æëó¨@½gÏ[Ö–¹sÌ¦¡ªÕç\'%Ó§§ÿÁ9¿aÃË*&æ_œó)jàÀ«ªªÍê’K©Ù³p®+.^§o/[ì<ïïw¿›l64¶š÷V¶Y³¦êÿ=--É¹y}bcÿ]M›6Ñl2õãÈ4©©óÔYgi6;õmí×±µÿ#DÜX¹Ib¥ÅßJN[Wn|Wrºbw¾¶¾Väˆ‘£äˆ\n]‘#rDEUÇ·>»¬ó\'‚½Üó\'Ãbhµ\0½`ş¨M•™ù’:ùä“tÃ°jÕszWÒ‡¢Ïÿû½ô_{Zw£pƒ>½o_¾Ó$ØÓ46V¨@-—}­¹¿VŸnjú°Åçeßeå&ç2Ù’8bÄå^Óee-Ñ»ÌNŸş_jÒ¤[tÉó‘Ûfd¼è÷y:TèÜ·ü•†@n#MŒıÿI¹\\•êÀíÎùÒÒ7õó¶ïûÈ‘ëàXÛ[ü_B´`¶GĞqm¼M[W2Z[É	våÆóñ?ë‚-m}­È9\"G!Ìuâ‹‘#*ªrtŸÇtY\'øù¬õx¬™´Z€^0WµXlS¹¹+Ôµ×Æªo¼ZŸ;÷¤yóTS¦ü‡¾LÎ—”¬Ó·±…ÊÊlke¿RoÉ’ûëßWş[¦“ËÓÒèórzÁ‚GZ|~2Íüù3›]vûí	^—mÜ¸T×Ô¾şê«¯pNoØ°Ø™nÿş=­\\ŞĞğş[U•£òòV9Ï;1ñ!³‰ØîÜ¦¾~¯¾Ü~}ìÛÈßììTçq23SZı_B¸`¶+»•OFƒİ.ĞJNv®ÜønÑåJN[_+rDÈQrä9·m{ÃÉ†äËßt2ŞäC£É“ow> :şAÑR••õ²ßÕÖnÑ·õ|<É©¿Ç(/[_ïr} êêö8U]½YhÔÒÿ!ãy^2PSóçÿï””\'[}m~ø7ÎiÏììÙ³>¨×˜EwÚ2ìå­œÎÉY¦OËØtÉƒŒ3û}Ì¾­ïùY³î	øäù¾ e¿9²£ÕÙ%ÏÕóyÊíåëS·¼O=ºS¦«-[^WÓ¦ıZÿ•=ÏZËq„äÈ³	t‚ŸÏø6÷@¤4Ü¶XMM˜+ÎyYé-t7İt½µğm~i\n.ºè½°;z´Ä\\`¿hí^z·¾¾±±\\ù{l¹lêÔ_9ç«ª6y4ÍGv;•Çñw?«V=ëu™¬Xıä\'ÿÚìz÷\nÉ+Ín?lØeæB6C_·¾µòï~>ıúõÕ×ÙÓÛÿOnîrçö••Ò·lY­/—Óyy¯¶øZwÑ‚Ùó“Ñ\\¹ii%§ª+7}>\'úµ\"Gäˆ… GR2f}¤ÿÌ¦y‰u¤ÿÿÔ§İGúÌ™öø^\"Ço/{V¸?´\nœ!{ÉcÕÕí¶šÕÌ€Ó=şøT}º¤d­:v¬Ô¹Íøñ£é)Véé/èLH—/Ÿ§§±›ş)S~édÜ^VÈÊ¿ü_“&İ¬ÿÊ^\'qq—èÓR6¼d}Åûù¬\\9ß9½fÍšnK‘£èÎQ ’½®’“¯öíËs>µO——gé1î>öÆ‡ú½É¿†>¸å=æ\'Lø…“ÍÚZ÷ñ7ÜÍ¯ÿ1j¿7Èò¾ à5ë¸y^ÓÏı[¯÷AÉ‹ıö}Ê°ÜÎı!]š×õ’Ó²²\rúº\'¸Wÿo†şšWº^6ØËÉm{_Ï0ÊQµÇåŸàç3Èã±>¥Õô‚¹²MU]íş„±¢âm½“İBí…¤¬45U8ÓºWrâó‡m³Öoéóï)ßÇ6ô›~Ñìq7lH±ì|‘ª¯ßã\\.Ïá¬³ş?çü‘#Eæ‚±¹°^e­”¯ôºy.×ûæ\nG’ntÊÊÖëï¡}ª©ÙÜì¹¤¥=¯ZuìØNëËÛõãËi™^ş&%=ª§ohØkmíâñ&S`½i¼c¾<c6U©­¾Æ]¼`öüd4®>Á÷·’Ó‘•ß•œ„0z­È9\"G!È‘=d{ÎoY	—Óî¦¸2`†¤dåYÆ—Œ)’1½zõsz\\ËtrBù{î¹ÿ¬æÍ›î5­dÑ¾½¡·>?¡OŸsÎ¬¯cøŸröiYÈ_yÌ¶X[òŠœë%köm%s‰‰¿sÎË×PÜÍ~¥^Ø¹¹îº8•‘±Èjtrœûª¬Ü¨ÿ¿¶,«ÈQô¿µ6ÿgÌø/½Ì–ó26å¯¼\'ÈuöûˆŒG9/•÷±cGz5ÃvfKJÖè÷ûò%KV^ø#=N,xØ:FÇ.ë§$W9ÏCÆ¬¡÷ğª°>°µ÷jÙ¢³!ïm¾Ï]Ş[är¹ûƒÚìì¥:Ër{ÿ«½±sb¿ïØ·íÈë&cã+ó}OğóéãñX\r´Z€^0ĞbÕÖæë–©SÇ;—mÜø²¹22Ğ9/+\nö\nƒ}^Vˆ¦O¿S7%·µWşeÚÃ‡·é•†ÂÂ´€ÏA®s¯|ç›ùİzËßSOİÛlºÒÒµÎ\'Ÿ———oPÛ¶­Ö[æ,xÈëº={ŞtŞX<§—µººRsee“¾ìÀw­ïĞ^§ÏÛ—K54Ø\rD>Ÿ›»Lÿ5ôwO¶ú\ZÛÕ†…f¨+©ƒã«‡Ÿ-	UÖå‘n¯9\"GäèÄæHÆÑ€ÿd®Ô¿déÿ=Fì«ä´4Å·qé©\Z5j„Õ¼ìq¤ÿzüù>®ÜdÉ÷ñ7ïîóû÷ç9\r±ì!?T_––¨OË_yœC‡¶6Ÿò<\ZË¬­g<¶p\'ë-ğ™9R¨Ë½5o>-9ñœÖóşe\Zû´| f/+ì×Ëİ¤£îú~ÔR¼ª÷\0ÉÉyE¥¤ü^ácÇJô‡=wÜ1F¿?45½ßlœÈ´’QÏ²×ÔÂ…³¬-Ìk­fºÔë62½œv¹Êõ—ËRSçèÇª¨ÈÒ×IvÜÜ&ªÁƒÏÓÍ¼}{û~å½GN{şò~èŞRÖlLËóó7Ö/~Òy²—ò<‚}ÿ‰€…ê¨é¡~< ÜîŠ «©©¼]·£Z®.ş$t§µõ —5]kGíÈ…¶ü.j8oQğ}­È9\"G\'8Guu;õßëÆZ\Z‚}ûr­ë×Í•öõê¼óxİæx“ì>Ÿ—·ÂãŸ\n³éİ«|777Õj¸+Z¼¯\nôtösØ¿ÿk—öGiÊÊ2­-v+õcefº·:/_>×l8·\Z‘Vãş‚ÙHo·4¸Åk<KÃa?W¹9íŞúîoüKÃc?vié\ZçòË.Lx?jÓ¼¯ªÚh»àg\\ÖÖæéëå¼ç´IIëÃd,\'\'?f}­i¼õ]í)z7u{z{»ÛlıšdÚ³½û÷j=½ŒsùpÉóñíLÉmåCµaÃ.õzşöóµïÃó¹º›çãË”ôôçõå·Şzƒ^†¸·»÷¬²3äy›~?ªc7Ğ¥\r÷ûT˜T-˜}ß¬}W&êŒó¹ö¬ätõwæ½VŒ_rDB”£ÌÌ…Ö‘ş_R«V=c®Ì÷P?|·>ï>ÒÿKÎ´gyºÙ$_¯OïÛ·Ùi¶íi\Z÷(ßÇÍÍ}ÅÚ\nœ¬î¸c´ºë®›õô†>Ùİ^Ó=Zhí6[l®äË×-Êô}Ú•“³Ô\\yÏo6>íÇw7Ğ­­ôãôémÛ^k6ıˆ?uÃäÉ·êÓî£ü_ïLW\\œ¦&Lã4#÷oŸÎÈø9\"G«¾¾T]~ù¿9cMÆ¿œ.+{ÓK²ÇÄ9çœ­öïÿ³3NdO-sÉÉ³ôS£G_­³ièİ²7;eúÔÔÙÖ–éuVSüšß±g[;côyiºíçfO»zõ|¯Û×Ô¸·PË‡\0Ë—ÏÑ_SZ²äIçq[z<CïRåÜ¯¡¿Æ•\rïG|‡èÚ†»<äåş„s¾®nG«Ó¯Y³À9ßØ¸Û:Ò«­Ş.%å±V§‘*ßûÎÉYÒ%¯KÌEf°bÓ‘OğıÔŠ¿£Â³’Ó•G…míµêÔ1½XgBN=º=àtãÇßØbN<ëÀ<çşÊÊ2ôJÔ†\r‹ô§úöÊUFF’3ıµ×^¡n¼q„¹’”£gè’Ó¾Ù\rÇÜ‘£èÌ‘Œai†í±)§çÎfm…»_M™r›Ó,—”¼¡oc7Ü••oYß-3‚şú><ÇçãÔÖ¾£W°÷ïÏÕÍ¼3ÉÎáÃ[œéä¾ä¶Òü§§\'š+ùÙjÖ¬ß8%+ëGl5›˜ÍÆ§Ü·ü?rÙ=v¬H_î;½»(÷hÖËõÿ*ÿŸ=Ëµ×YnØËßÛÊs³“ñ~ä¯Š‹_w>’1,»rWWo´æ·×kLÙãdñâßë±\'cW² M»äÁĞ{k8™”±\'ï\röX”ÛËûŒéI“nÒe¿Éõ\r\r¥Îü‘é\nWë¯olÛ¶ÊjÂ×[Í|×ÿ`çÎĞ[Ñ7êïrÇÇÇ9c_î×w¬ËãÉs–½Fä¹ÎŸ?İÚÍıéhy?â(å@×6Üï…¬JJÒÌ&y¥Z°`¦õ}²¥æJşæô|s%~¶¹ĞÜd-¼÷º\\–œü¨>ír¹·HÈ›€ïı¾f.¬S¬…vŠşt3.îßõi)Y`»w9ô¾oYñ¯«+ÖÏMÊĞ»CıÒ9-×…âõ	Ñ‚¹¥-ı$¿µß5míwQbtÍï¶õµê”ù_U•e5/;ã¡´4½Ùt‡å;ŸŞË¸îßÿ‡*-íY½\"#Y’ËÜ[İ\nÛ$&>¨?»¦æOÎe2)Üßs‘-²‚âoŒ¦§?Ö¹#GÑ™£¦¦½zùoŸŸ7ï·Ö‘şG:™ñ-i®%ÕÕo›\ró6³Qøƒu¤ÿIúúÆÆ]Êóq÷ìY£?ğ’†A¦‘Çt7\rùfş¦¹ş€~L{zÏŒUTdêéí1(ïm¾ÏGòlè­ì#õs’Ç²ó*ù‘¬HÃã;%‹öt“\'ß¢O÷íÛGÍ˜q§ßñ¿rå\\ç´üOòŞkè]eß±vÎ\"G¼ù­ÚÚ?ëõ1CÿL×zœÊò[>Ü²Ç…äÈwıìÈ‘-zNŞä2;[r{Cïu±Ülj78ëp«W?ÓâØ³ÃÎ˜</{QÆ±äñø‡»ïGóø‡lÇß³ìõIÉ ûì¯üÚ™±SşFøû¿Ã\rtmÃ]²:|¸@¿ù76–êrÒŸc}jÿ¢^°Ú+·³~G¼kıLÅƒ~ïßıÉ~¢sŞ}D×ãÓºè:EŸnh(QYYÉú6sçŞg­à™ñçñìçÙÔ´\'$¯Ş—híıÖVnŒv®äØ»‹ö¹·ÔıÖ9/[¯¤õœÆåÚm®”/Ô§¥Ñ.,\\e®Hqnç^™åu›úú^+™™Iú;°\'Õ—Ù—KÃ`ßFVšd×Ai:oyxÑZÊ²l¹#GÑ#öx•1{±ó>\"ãÔsÜ¸·p_çœ?tÈşy£}Ş~’ÓGnuŞäÃ©ÛoÿY³qe?¶œ¯­uw[²$yq7Ç§u7ÜeÖÑùœÇŞ²eE‹ï]öôÆ¶üÏş®“Ç·jÉ¸¼†s­2çÿ6ô®ñw‘#ŞÎw{lËx—÷Cï²Ç¹^Æ—çôòj—2æSSŸÒØúfF–û·‘±(ï_wÜñs]¾ï3••ëLÊÃeek­_ÎHuŸlœ1ôÖï…~ÿ;ÃÆ¨Ë.äuİüù÷{ıŸr¹™»î\ZçL\'ÏÃĞ»¾¿\ZéïGÌrYÏÇe?úîïmÛÿ{­ Ì{CZöÂ¬²2Óút§Õd[[ôÒüŞfõêyÖbßwCÃs!¾N7ævs¾rå}º¦æmİ ø»ï±c¯ñ:/÷!oîŸü¾6a>^mYhëÊM°+9öã‹öú;i7ú½|ÄˆË¼.“†vôè«Ì•“_è•“Å‹Ó[”gÌ˜è\\fè-=ãÜGYÙ\ZsEåsf‹ÙüşÆúY—b=Îíi²²9![4|Wª©i·“-¹¯pÌ9ŠÎÕÖnÖÍ³ûC(÷e2Ö/¹ä_óò>a¿_Øçekõôét6<Kn»aÃ”¿Ç•÷£iÓ~¥)w~ƒßçdŸ–ÇqïÙá¾_ù+uõÕ—7{_“ìH 9–i$ûò¾(§‡\r»Dåæ.	8¶³³S¾Frçû¨»9?~İ¨QÃôc¶%_ä¨û½Éú˜,Ïå½À^»›ÜW¼Æ…ç{…ûƒÒ×õi—k—ó~c¿_ØÓ,óºÍ‚3ôôÆ^qñkNå¯|È+ï\'r?ƒÿØ™VËór’i°=s\"ÿÇÃÿ—Ş+Dê©§îqŞ¿ìª¨xÓyÏç±páCÎß(x?Êõã‰\'è1ñxŒ­´Y€³`Ş’ª«Û®·DL›6^/e¸oßŸTjê“z!wäHµµk»^Îßzëõz\ZCïfû’^IZ²äq•˜8]_—·ÔZñ×y»Ñhl,±>‰}AŸ–…¯»a?şœ\\®ãß’ÛÈŠ•l-,.^e½©,Ùëc?÷3²eÁwwº;à×ÔßJÎÄ ¶`DMrs_6WÊªÇÛªUsu³;cÆ¯Í•e÷–`iì±lçdÿşl§iu7Éúö2Æ%ú¾eºr½²aŸ¶?ô*/_Ûl¼WU­wš}YI—œÆÅıDÿ•Ú½`OXæuŸ55í\né2º«+”ÿ/9êïG¡£á˜ÛõœÂ,Gã<Æ·låîìƒ§]lßŠ.56pÌ»CV.×Nså³s¾´ôus!Wjí~÷¼ÙLä[ßÏÙìu;÷\'¨¯™ÄFkW¥Àánd÷¦EÖ÷İnÖ§¥I¸ùæ‘^Ó®^=×úäõ³1xQß¿}{ö¼á±Õ14¯9¿Wèû-++mY¹1Z¹](j¥KsTW·M{ûü†\rIÎ·³QU•i6¯;ü—ÌÌÎy™ÆĞÇFXì5]mí&³_§ª«7èû–ñîŞzñÕx¿éÑè¶<>§L¹EßnË–ea›;rÔırDñ~DÈ9j“|†¸Òè¼Ÿ“Ÿ+7¼·n÷2\0Øæ]!«úz÷o#Şxãp³)xÉj&Ş´v“KÖÓo\"ßÎĞåxÈ9=uêmÃóö†ş¾Û\"}ZÏ}D×ãÓ._ş¤Ş}oŞ¼ûôù††\"ëû<ëÍæãÖÁrrCöúDĞ\nçJÈ••‰Fğ?­â{»şŞjDçÈĞßmş}º®n«Õ@¿pÚØØ‹Ô¤Icõ8—1{Æ§¼ï¦&ûëo[ß]ëŒwCN¶J«Ë/¬ï¯_¿¨ûïÿ•sÿ2ÍèÑ#t¾~ò“Â6wäˆQ¼‘#Šùc¸÷\nñlŒ;ÚtK³í¹»ºç`-àµ`.\rY56y4¥ÖÖµuÖd^qšğ¼¼—½nw¼á.UGº<sÊ)\'›\rÉ–faè#ºÆš+ü­-mãôi÷]\'8ÓÕÖşI¹\\;ôÏ¾È455¬£Ï–êÆÃĞß!ZÒ×\'ÂVpü­ätÆ–Š®8úkXäèÈ‘wœ,ÈùmÛ–YÍçæ€ãåá‡ï4è,§Ü^-jv¿«VÍV+W>¥êë·éË\n\n–š\ròóºA—LUWg6»yoè²=ğ¹„KîÈQ÷ÎÅû9bü’£ÉÏvyîú-[ºÛ»{¹ÜÎsË6»’]½`nhp…\\¾¯j¯˜Ë\n¸{«[–nrr^ô»À’ïÊÁqìf$#ã9\'Ül\n¸ “Çima8aÂÏç\'GT¾ıöxç:÷î°¬à„`%§³W–\"*Gv6ÒÓç©¦¦}™Û`Ø°oq¼HÓì{YVVR³iÎõØz^ª›h;;’;CïÎæ÷1,˜®uCÿ&éïÛ4»2wä¨ûæˆâıˆ‘#rÔ&“|šn9-Rë×ÆÛËtÏøÜ‡Ô#´V@˜4Ü²UKÎ{né–Úßm¤ùë§Mû¿×ûÛÊí¹ óİÚço\Zy²Åï¼óşEo}óİ\"ª-İº‚co	èÈnw‘¸Û^§å¨´ô5ıİj{ìÉßY³îr>ˆji¼Ø»”»wû^híšéwzù°JKşø#¯ë$2şå6)éAë\0klÓ8îÊÜ‘£î™#Š÷#rDÈQPÆ[c]ù4ŞYVC.[¯íİÍe·ñAÖmŞ0Ü»{Ş®Îº\r€î¶`¶·vt\ZÌA­¤»E ÒH69\n§±N¹#Gäˆ\"Gäˆ\"Gmcxÿº=µÕà;Û\0fÌ!ìnx‘¼Û9\"Gäˆ‘#rD¨hÈÑmVãí\n²Ñdp4r€3æ°]Éb¸wA\ZG(rDÈ9\"Gäˆu¹f=`ÖZ³>1«Áúäï§†{wó™†{Ë8\0Ì,˜»P‚µò’ĞÂõŸEÉÊ\r9\"Gäˆ‘#rD¨hÎ\0Ì,˜#hËB´ì¶GÈ9\"Gäˆ‘#Š†\0fÌa³’+7äˆ‘#rDÈ9¢h¸°`fÁÜ¥+9IQºrCÈ9\"Gäˆ‘#Š†\0fÌ]&ÁúßÈEÈ9\"Gäˆ‘#\04ÜæÎÕ‡Qäˆ‘#rDÈ9@ÃM±`9\"G Gääˆ\"G\0X0³`9¢È9¢ÈÈ9À‚™bÁL(rrD@È\0Ìf#rrD@(r€3f#rDÈEÈE\0°`¦X0“#Š‘##r€3Å‚äˆ‘##Š`ÁÌ‚äˆQäˆQä\0fŠ39¢È¿ääˆˆ.\'Ÿ|Òw\r\r…,Ã ¾újû>s–¸•äˆ\"Gäˆ\"G Gä@<øÇ‡òó—°`ƒZ¿şù·ÍY²“QI(rD(rrD\0D«®ºlİœ9SY0†A{Uš9K•äˆ\"Gäˆ\"G Gä@0à±œóËµƒ…c×Ö\'=zô¨0gI£’Qäˆ1ÉÈ9%ú÷ÿaiRÒƒ,»°ÆŒ¹j©9+räˆ\"Gäˆ‘##r º:óÌÓê‹ŠV°ì‚ÊÏ_ºŞœÍº˜¡H(rDÈ99\"G\0¢Oü9çœıwÎ¡_(÷èÑ£Æ|ıÇ0ÉE@ÈÈ9Åç“Núş±yóîûœïşœøïöX»d¡L(rrD@È€îaPÏßË9ıôSO™rËîM›^<Èï9vŞï1ÊODÈQ+­iÈw{ØİˆQääˆ‘#\0İÌ¥fÍ1k«Y\rf)ªÃå2Ü¿Ç(?ÁQ+ÉE@ÈÈ9\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¢ßÿğ9‹­æ6BX\0\0\0\0IEND®B`‚',0);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('next.dbid','1',1),('schema.history','create(5.15.1)',1),('schema.version','5.15.1',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_group` */

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_info` */

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_membership` */

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_user` */

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('36b766f3413e48f79e943333ea85efb6','SpringAutoDeployment',NULL,'','2016-06-21 17:35:21');

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('test_audit:1:2caa6b64ad3c4331bf7701df2d18afa8',1,'http://www.activiti.org/test','æµç¨‹å®¡æ‰¹æµ‹è¯•æµç¨‹','test_audit',1,'36b766f3413e48f79e943333ea85efb6','test_audit.bpmn20.xml','test_audit.png',NULL,1,1,'');

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DUE_DATE_` datetime DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

/*Table structure for table `businessinfo` */

DROP TABLE IF EXISTS `businessinfo`;

CREATE TABLE `businessinfo` (
  `id` varchar(64) DEFAULT NULL,
  `bus_id` varchar(64) DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `businessinfo` */

insert  into `businessinfo`(`id`,`bus_id`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('2acd13ddf3254e599d1b74181ac7e075','10001','1','2016-06-22 17:02:26','1','2016-06-22 15:18:03','æ˜†æ˜è—ç’ä»·æ ¼ä»æ•°ä¸‡è·Œè‡³å‡ åƒ å® ç‰©å¸‚åœºéš¾è§','1');

/*Table structure for table `cms_article` */

DROP TABLE IF EXISTS `cms_article`;

CREATE TABLE `cms_article` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `category_id` varchar(64) NOT NULL COMMENT 'æ ç›®ç¼–å·',
  `title` varchar(255) NOT NULL COMMENT 'æ ‡é¢˜',
  `link` varchar(255) DEFAULT NULL COMMENT 'æ–‡ç« é“¾æ¥',
  `color` varchar(50) DEFAULT NULL COMMENT 'æ ‡é¢˜é¢œè‰²',
  `image` varchar(255) DEFAULT NULL COMMENT 'æ–‡ç« å›¾ç‰‡',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'å…³é”®å­—',
  `description` varchar(255) DEFAULT NULL COMMENT 'æè¿°ã€æ‘˜è¦',
  `weight` int(11) DEFAULT '0' COMMENT 'æƒé‡ï¼Œè¶Šå¤§è¶Šé å‰',
  `weight_date` datetime DEFAULT NULL COMMENT 'æƒé‡æœŸé™',
  `hits` int(11) DEFAULT '0' COMMENT 'ç‚¹å‡»æ•°',
  `posid` varchar(10) DEFAULT NULL COMMENT 'æ¨èä½ï¼Œå¤šé€‰',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT 'è‡ªå®šä¹‰å†…å®¹è§†å›¾',
  `view_config` text COMMENT 'è§†å›¾é…ç½®',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `cms_article_create_by` (`create_by`),
  KEY `cms_article_title` (`title`),
  KEY `cms_article_keywords` (`keywords`),
  KEY `cms_article_del_flag` (`del_flag`),
  KEY `cms_article_weight` (`weight`),
  KEY `cms_article_update_date` (`update_date`),
  KEY `cms_article_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æ–‡ç« è¡¨';

/*Data for the table `cms_article` */

insert  into `cms_article`(`id`,`category_id`,`title`,`link`,`color`,`image`,`keywords`,`description`,`weight`,`weight_date`,`hits`,`posid`,`custom_content_view`,`view_config`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','3','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,'green',NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','4','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','5','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','5','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','5','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','7','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','7','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','7','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','7','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','8','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','8','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','3','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,'red',NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','8','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','8','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','9','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','9','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','9','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','9','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','9','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','11','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('28','11','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','11','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','3','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','11','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','11','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','12','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('33','12','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34','12','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('35','12','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','12','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','13','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('38','13','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('39','13','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','3','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,'green',NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','13','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('41','14','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('42','14','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('43','14','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('44','14','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('45','14','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','15','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('47','15','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('48','15','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('49','16','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','3','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','17','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','17','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','26','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','26','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','3','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','4','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','4','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,'blue',NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','4','æ–‡ç« æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜æ ‡é¢˜',NULL,NULL,NULL,'å…³é”®å­—1,å…³é”®å­—2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');

/*Table structure for table `cms_article_data` */

DROP TABLE IF EXISTS `cms_article_data`;

CREATE TABLE `cms_article_data` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `content` text COMMENT 'æ–‡ç« å†…å®¹',
  `copyfrom` varchar(255) DEFAULT NULL COMMENT 'æ–‡ç« æ¥æº',
  `relation` varchar(255) DEFAULT NULL COMMENT 'ç›¸å…³æ–‡ç« ',
  `allow_comment` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦å…è®¸è¯„è®º',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æ–‡ç« è¯¦è¡¨';

/*Data for the table `cms_article_data` */

insert  into `cms_article_data`(`id`,`content`,`copyfrom`,`relation`,`allow_comment`) values ('1','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('10','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('11','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('12','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('13','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('14','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('15','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('16','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('17','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('18','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('19','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('2','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('20','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('21','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('22','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('23','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('24','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('25','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('26','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('27','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('28','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('29','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('3','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('30','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('31','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('32','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('33','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('34','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('35','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('36','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('37','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('38','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('39','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('4','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('40','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('41','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('42','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('43','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('44','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('45','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('46','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('47','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('48','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('49','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('5','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('50','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('51','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('52','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('53','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('6','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('7','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('8','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1'),('9','æ–‡ç« å†…å®¹å†…å®¹å†…å®¹å†…å®¹','æ¥æº','1,2,3','1');

/*Table structure for table `cms_category` */

DROP TABLE IF EXISTS `cms_category`;

CREATE TABLE `cms_category` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `parent_id` varchar(64) NOT NULL COMMENT 'çˆ¶çº§ç¼–å·',
  `parent_ids` varchar(2000) NOT NULL COMMENT 'æ‰€æœ‰çˆ¶çº§ç¼–å·',
  `site_id` varchar(64) DEFAULT '1' COMMENT 'ç«™ç‚¹ç¼–å·',
  `office_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±æœºæ„',
  `module` varchar(20) DEFAULT NULL COMMENT 'æ ç›®æ¨¡å—',
  `name` varchar(100) NOT NULL COMMENT 'æ ç›®åç§°',
  `image` varchar(255) DEFAULT NULL COMMENT 'æ ç›®å›¾ç‰‡',
  `href` varchar(255) DEFAULT NULL COMMENT 'é“¾æ¥',
  `target` varchar(20) DEFAULT NULL COMMENT 'ç›®æ ‡',
  `description` varchar(255) DEFAULT NULL COMMENT 'æè¿°',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'å…³é”®å­—',
  `sort` int(11) DEFAULT '30' COMMENT 'æ’åºï¼ˆå‡åºï¼‰',
  `in_menu` char(1) DEFAULT '1' COMMENT 'æ˜¯å¦åœ¨å¯¼èˆªä¸­æ˜¾ç¤º',
  `in_list` char(1) DEFAULT '1' COMMENT 'æ˜¯å¦åœ¨åˆ†ç±»é¡µä¸­æ˜¾ç¤ºåˆ—è¡¨',
  `show_modes` char(1) DEFAULT '0' COMMENT 'å±•ç°æ–¹å¼',
  `allow_comment` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦å…è®¸è¯„è®º',
  `is_audit` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦éœ€è¦å®¡æ ¸',
  `custom_list_view` varchar(255) DEFAULT NULL COMMENT 'è‡ªå®šä¹‰åˆ—è¡¨è§†å›¾',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT 'è‡ªå®šä¹‰å†…å®¹è§†å›¾',
  `view_config` text COMMENT 'è§†å›¾é…ç½®',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `cms_category_parent_id` (`parent_id`),
  KEY `cms_category_module` (`module`),
  KEY `cms_category_name` (`name`),
  KEY `cms_category_sort` (`sort`),
  KEY `cms_category_del_flag` (`del_flag`),
  KEY `cms_category_office_id` (`office_id`),
  KEY `cms_category_site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æ ç›®è¡¨';

/*Data for the table `cms_category` */

insert  into `cms_category`(`id`,`parent_id`,`parent_ids`,`site_id`,`office_id`,`module`,`name`,`image`,`href`,`target`,`description`,`keywords`,`sort`,`in_menu`,`in_list`,`show_modes`,`allow_comment`,`is_audit`,`custom_list_view`,`custom_content_view`,`view_config`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','0','0,','0','1',NULL,'é¡¶çº§æ ç›®',NULL,NULL,NULL,NULL,NULL,0,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','1','0,1,','1','4','article','è½¯ä»¶ä»‹ç»',NULL,NULL,NULL,NULL,NULL,20,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','10','0,1,10,','1','4','article','ç½‘ç»œå·¥å…·',NULL,NULL,NULL,NULL,NULL,30,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','10','0,1,10,','1','4','article','æµè§ˆå·¥å…·',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','10','0,1,10,','1','4','article','æµè§ˆè¾…åŠ©',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','10','0,1,10,','1','4','article','ç½‘ç»œä¼˜åŒ–',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','10','0,1,10,','1','4','article','é‚®ä»¶å¤„ç†',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','10','0,1,10,','1','4','article','ä¸‹è½½å·¥å…·',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','10','0,1,10,','1','4','article','æœç´¢å·¥å…·',NULL,NULL,NULL,NULL,NULL,50,'1','1','2','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','1','0,1,','1','5','link','å‹æƒ…é“¾æ¥',NULL,NULL,NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','18','0,1,18,','1','5','link','å¸¸ç”¨ç½‘ç«™',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','1','3','article','ç»„ç»‡æœºæ„',NULL,NULL,NULL,NULL,NULL,10,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','18','0,1,18,','1','5','link','é—¨æˆ·ç½‘ç«™',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','18','0,1,18,','1','5','link','è´­ç‰©ç½‘ç«™',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','18','0,1,18,','1','5','link','äº¤å‹ç¤¾åŒº',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','18','0,1,18,','1','5','link','éŸ³ä¹è§†é¢‘',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','1','0,1,','1','6',NULL,'ç™¾åº¦ä¸€ä¸‹',NULL,'http://www.baidu.com','_blank',NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','1','0,1,','1','6',NULL,'å…¨æ–‡æ£€ç´¢',NULL,'/search',NULL,NULL,NULL,90,'0','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','1','0,1,','2','6','article','æµ‹è¯•æ ç›®',NULL,NULL,NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','1','0,1,','1','6',NULL,'å…¬å…±ç•™è¨€',NULL,'/guestbook',NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','2','0,1,2,','1','3','article','ç½‘ç«™ç®€ä»‹',NULL,NULL,NULL,NULL,NULL,30,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','2','0,1,2,','1','3','article','å†…éƒ¨æœºæ„',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','2','0,1,2,','1','3','article','åœ°æ–¹æœºæ„',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','0,1,','1','3','article','è´¨é‡æ£€éªŒ',NULL,NULL,NULL,NULL,NULL,20,'1','1','1','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','6','0,1,6,','1','3','article','äº§å“è´¨é‡',NULL,NULL,NULL,NULL,NULL,30,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','6','0,1,6,','1','3','article','æŠ€æœ¯è´¨é‡',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','6','0,1,6,','1','3','article','å·¥ç¨‹è´¨é‡',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');

/*Table structure for table `cms_comment` */

DROP TABLE IF EXISTS `cms_comment`;

CREATE TABLE `cms_comment` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `category_id` varchar(64) NOT NULL COMMENT 'æ ç›®ç¼–å·',
  `content_id` varchar(64) NOT NULL COMMENT 'æ ç›®å†…å®¹çš„ç¼–å·',
  `title` varchar(255) DEFAULT NULL COMMENT 'æ ç›®å†…å®¹çš„æ ‡é¢˜',
  `content` varchar(255) DEFAULT NULL COMMENT 'è¯„è®ºå†…å®¹',
  `name` varchar(100) DEFAULT NULL COMMENT 'è¯„è®ºå§“å',
  `ip` varchar(100) DEFAULT NULL COMMENT 'è¯„è®ºIP',
  `create_date` datetime NOT NULL COMMENT 'è¯„è®ºæ—¶é—´',
  `audit_user_id` varchar(64) DEFAULT NULL COMMENT 'å®¡æ ¸äºº',
  `audit_date` datetime DEFAULT NULL COMMENT 'å®¡æ ¸æ—¶é—´',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `cms_comment_category_id` (`category_id`),
  KEY `cms_comment_content_id` (`content_id`),
  KEY `cms_comment_status` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='è¯„è®ºè¡¨';

/*Data for the table `cms_comment` */

/*Table structure for table `cms_guestbook` */

DROP TABLE IF EXISTS `cms_guestbook`;

CREATE TABLE `cms_guestbook` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `type` char(1) NOT NULL COMMENT 'ç•™è¨€åˆ†ç±»',
  `content` varchar(255) NOT NULL COMMENT 'ç•™è¨€å†…å®¹',
  `name` varchar(100) NOT NULL COMMENT 'å§“å',
  `email` varchar(100) NOT NULL COMMENT 'é‚®ç®±',
  `phone` varchar(100) NOT NULL COMMENT 'ç”µè¯',
  `workunit` varchar(100) NOT NULL COMMENT 'å•ä½',
  `ip` varchar(100) NOT NULL COMMENT 'IP',
  `create_date` datetime NOT NULL COMMENT 'ç•™è¨€æ—¶é—´',
  `re_user_id` varchar(64) DEFAULT NULL COMMENT 'å›å¤äºº',
  `re_date` datetime DEFAULT NULL COMMENT 'å›å¤æ—¶é—´',
  `re_content` varchar(100) DEFAULT NULL COMMENT 'å›å¤å†…å®¹',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `cms_guestbook_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ç•™è¨€æ¿';

/*Data for the table `cms_guestbook` */

/*Table structure for table `cms_link` */

DROP TABLE IF EXISTS `cms_link`;

CREATE TABLE `cms_link` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `category_id` varchar(64) NOT NULL COMMENT 'æ ç›®ç¼–å·',
  `title` varchar(255) NOT NULL COMMENT 'é“¾æ¥åç§°',
  `color` varchar(50) DEFAULT NULL COMMENT 'æ ‡é¢˜é¢œè‰²',
  `image` varchar(255) DEFAULT NULL COMMENT 'é“¾æ¥å›¾ç‰‡',
  `href` varchar(255) DEFAULT NULL COMMENT 'é“¾æ¥åœ°å€',
  `weight` int(11) DEFAULT '0' COMMENT 'æƒé‡ï¼Œè¶Šå¤§è¶Šé å‰',
  `weight_date` datetime DEFAULT NULL COMMENT 'æƒé‡æœŸé™',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `cms_link_category_id` (`category_id`),
  KEY `cms_link_title` (`title`),
  KEY `cms_link_del_flag` (`del_flag`),
  KEY `cms_link_weight` (`weight`),
  KEY `cms_link_create_by` (`create_by`),
  KEY `cms_link_update_date` (`update_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='å‹æƒ…é“¾æ¥';

/*Data for the table `cms_link` */

insert  into `cms_link`(`id`,`category_id`,`title`,`color`,`image`,`href`,`weight`,`weight_date`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','19','JeeSite',NULL,NULL,'http://thinkgem.github.com/jeesite',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','22','58åŒåŸ',NULL,NULL,'http://www.58.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','23','è§†é¢‘å¤§å…¨',NULL,NULL,'http://v.360.cn/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','23','å‡¤å‡°ç½‘',NULL,NULL,'http://www.ifeng.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','19','ThinkGem',NULL,NULL,'http://thinkgem.iteye.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','19','ç™¾åº¦ä¸€ä¸‹',NULL,NULL,'http://www.baidu.com',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','19','è°·æ­Œæœç´¢',NULL,NULL,'http://www.google.com',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','20','æ–°æµªç½‘',NULL,NULL,'http://www.sina.com.cn',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','20','è…¾è®¯ç½‘',NULL,NULL,'http://www.qq.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','21','æ·˜å®ç½‘',NULL,NULL,'http://www.taobao.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','21','æ–°åç½‘',NULL,NULL,'http://www.xinhuanet.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','22','èµ¶é›†ç½‘',NULL,NULL,'http://www.ganji.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');

/*Table structure for table `cms_site` */

DROP TABLE IF EXISTS `cms_site`;

CREATE TABLE `cms_site` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `name` varchar(100) NOT NULL COMMENT 'ç«™ç‚¹åç§°',
  `title` varchar(100) NOT NULL COMMENT 'ç«™ç‚¹æ ‡é¢˜',
  `logo` varchar(255) DEFAULT NULL COMMENT 'ç«™ç‚¹Logo',
  `domain` varchar(255) DEFAULT NULL COMMENT 'ç«™ç‚¹åŸŸå',
  `description` varchar(255) DEFAULT NULL COMMENT 'æè¿°',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'å…³é”®å­—',
  `theme` varchar(255) DEFAULT 'default' COMMENT 'ä¸»é¢˜',
  `copyright` text COMMENT 'ç‰ˆæƒä¿¡æ¯',
  `custom_index_view` varchar(255) DEFAULT NULL COMMENT 'è‡ªå®šä¹‰ç«™ç‚¹é¦–é¡µè§†å›¾',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `cms_site_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ç«™ç‚¹è¡¨';

/*Data for the table `cms_site` */

insert  into `cms_site`(`id`,`name`,`title`,`logo`,`domain`,`description`,`keywords`,`theme`,`copyright`,`custom_index_view`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','é»˜è®¤ç«™ç‚¹','JeeSite Web',NULL,NULL,'JeeSite','JeeSite','basic','Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','å­ç«™ç‚¹æµ‹è¯•','JeeSite Subsite',NULL,NULL,'JeeSite subsite','JeeSite subsite','basic','Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');

/*Table structure for table `gen_scheme` */

DROP TABLE IF EXISTS `gen_scheme`;

CREATE TABLE `gen_scheme` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `name` varchar(200) DEFAULT NULL COMMENT 'åç§°',
  `category` varchar(2000) DEFAULT NULL COMMENT 'åˆ†ç±»',
  `package_name` varchar(500) DEFAULT NULL COMMENT 'ç”ŸæˆåŒ…è·¯å¾„',
  `module_name` varchar(30) DEFAULT NULL COMMENT 'ç”Ÿæˆæ¨¡å—å',
  `sub_module_name` varchar(30) DEFAULT NULL COMMENT 'ç”Ÿæˆå­æ¨¡å—å',
  `function_name` varchar(500) DEFAULT NULL COMMENT 'ç”ŸæˆåŠŸèƒ½å',
  `function_name_simple` varchar(100) DEFAULT NULL COMMENT 'ç”ŸæˆåŠŸèƒ½åï¼ˆç®€å†™ï¼‰',
  `function_author` varchar(100) DEFAULT NULL COMMENT 'ç”ŸæˆåŠŸèƒ½ä½œè€…',
  `gen_table_id` varchar(200) DEFAULT NULL COMMENT 'ç”Ÿæˆè¡¨ç¼–å·',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°ï¼ˆ0ï¼šæ­£å¸¸ï¼›1ï¼šåˆ é™¤ï¼‰',
  PRIMARY KEY (`id`),
  KEY `gen_scheme_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ç”Ÿæˆæ–¹æ¡ˆ';

/*Data for the table `gen_scheme` */

insert  into `gen_scheme`(`id`,`name`,`category`,`package_name`,`module_name`,`sub_module_name`,`function_name`,`function_name_simple`,`function_author`,`gen_table_id`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('35a13dc260284a728a270db3f382664b','æ ‘ç»“æ„','treeTable','com.thinkgem.jeesite.modules','test',NULL,'æ ‘ç»“æ„ç”Ÿæˆ','æ ‘ç»“æ„','ThinkGem','f6e4dafaa72f4c509636484715f33a96','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('71ccdabb279a49db9b2d080c9b8709b9','platform','curd','com.ourfuture.order','order','','ä»£ç ç”Ÿæˆæµ‹è¯•','ä¸šåŠ¡ä¿¡æ¯','qzw1210','c05b40ed88ff4c39a4a40fde6d00f992','1','2016-06-22 16:14:02','1','2016-06-22 16:14:02','','0'),('9c9de9db6da743bb899036c6546061ac','å•è¡¨','curd','com.thinkgem.jeesite.modules','test',NULL,'å•è¡¨ç”Ÿæˆ','å•è¡¨','ThinkGem','aef6f1fc948f4c9ab1c1b780bc471cc2','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('c6683a96d10f47f19e8c716610f6aeee','order','curd','com.thinkgem.jeesite.modules','sys','demo','ä»£ç ç”Ÿæˆæµ‹è¯•','è®¢å•','qzw1210','6106c35bbc59409b9c2e7510c6da6e67','1','2016-06-22 14:28:58','1','2016-06-22 14:28:58','','1'),('dd9e881bc8df42f4b5e6f3ea7244dcda','monkey','curd','com.thinkgem.jeesite.modules','sys','demo','ä»£ç ç”Ÿæˆæµ‹è¯•','ä¿å­˜æ•°æ®ä¿¡æ¯','qzw1210','aef6f1fc948f4c9ab1c1b780bc471cc2','1','2016-06-21 10:23:54','1','2016-06-21 10:23:54','','1'),('e6d905fd236b46d1af581dd32bdfb3b0','ä¸»å­è¡¨','curd_many','com.thinkgem.jeesite.modules','test',NULL,'ä¸»å­è¡¨ç”Ÿæˆ','ä¸»å­è¡¨','ThinkGem','43d6d5acffa14c258340ce6765e46c6f','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('f219819689084c25bdd71aaf5455d3ec','ä¸šåŠ¡ä¿¡æ¯','curd','com.thinkgem.jeesite.modules','sys','demo','ä¸šåŠ¡ä¿¡æ¯','ä¸šåŠ¡ä¿¡æ¯','qzw1210','80d5844ad38040ecba01a36f22dc8e4a','1','2016-06-22 14:48:13','1','2016-06-22 14:48:13','','1');

/*Table structure for table `gen_table` */

DROP TABLE IF EXISTS `gen_table`;

CREATE TABLE `gen_table` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `name` varchar(200) DEFAULT NULL COMMENT 'åç§°',
  `comments` varchar(500) DEFAULT NULL COMMENT 'æè¿°',
  `class_name` varchar(100) DEFAULT NULL COMMENT 'å®ä½“ç±»åç§°',
  `parent_table` varchar(200) DEFAULT NULL COMMENT 'å…³è”çˆ¶è¡¨',
  `parent_table_fk` varchar(100) DEFAULT NULL COMMENT 'å…³è”çˆ¶è¡¨å¤–é”®',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°ï¼ˆ0ï¼šæ­£å¸¸ï¼›1ï¼šåˆ é™¤ï¼‰',
  PRIMARY KEY (`id`),
  KEY `gen_table_name` (`name`),
  KEY `gen_table_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ä¸šåŠ¡è¡¨';

/*Data for the table `gen_table` */

insert  into `gen_table`(`id`,`name`,`comments`,`class_name`,`parent_table`,`parent_table_fk`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('43d6d5acffa14c258340ce6765e46c6f','test_data_main','ä¸šåŠ¡æ•°æ®è¡¨','TestDataMain',NULL,NULL,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('6106c35bbc59409b9c2e7510c6da6e67','order','order','Order','','','1','2016-06-22 14:27:30','1','2016-06-22 14:27:30','','0'),('6e05c389f3c6415ea34e55e9dfb28934','test_data_child','ä¸šåŠ¡æ•°æ®å­è¡¨','TestDataChild','test_data_main','test_data_main_id','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('80d5844ad38040ecba01a36f22dc8e4a','businessinfo','businessinfo','Businessinfo','','','1','2016-06-22 14:47:27','1','2016-06-22 14:47:27','','1'),('aef6f1fc948f4c9ab1c1b780bc471cc2','test_data','ä¸šåŠ¡æ•°æ®è¡¨','TestData',NULL,NULL,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('c05b40ed88ff4c39a4a40fde6d00f992','businessinfo','businessinfo','Businessinfo','','','1','2016-06-22 16:12:41','1','2016-06-22 16:12:41','','0'),('f6e4dafaa72f4c509636484715f33a96','test_tree','æ ‘ç»“æ„è¡¨','TestTree',NULL,NULL,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0');

/*Table structure for table `gen_table_column` */

DROP TABLE IF EXISTS `gen_table_column`;

CREATE TABLE `gen_table_column` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `gen_table_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±è¡¨ç¼–å·',
  `name` varchar(200) DEFAULT NULL COMMENT 'åç§°',
  `comments` varchar(500) DEFAULT NULL COMMENT 'æè¿°',
  `jdbc_type` varchar(100) DEFAULT NULL COMMENT 'åˆ—çš„æ•°æ®ç±»å‹çš„å­—èŠ‚é•¿åº¦',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVAç±»å‹',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVAå­—æ®µå',
  `is_pk` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦ä¸»é”®',
  `is_null` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦å¯ä¸ºç©º',
  `is_insert` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦ä¸ºæ’å…¥å­—æ®µ',
  `is_edit` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦ç¼–è¾‘å­—æ®µ',
  `is_list` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦åˆ—è¡¨å­—æ®µ',
  `is_query` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦æŸ¥è¯¢å­—æ®µ',
  `query_type` varchar(200) DEFAULT NULL COMMENT 'æŸ¥è¯¢æ–¹å¼ï¼ˆç­‰äºã€ä¸ç­‰äºã€å¤§äºã€å°äºã€èŒƒå›´ã€å·¦LIKEã€å³LIKEã€å·¦å³LIKEï¼‰',
  `show_type` varchar(200) DEFAULT NULL COMMENT 'å­—æ®µç”Ÿæˆæ–¹æ¡ˆï¼ˆæ–‡æœ¬æ¡†ã€æ–‡æœ¬åŸŸã€ä¸‹æ‹‰æ¡†ã€å¤é€‰æ¡†ã€å•é€‰æ¡†ã€å­—å…¸é€‰æ‹©ã€äººå‘˜é€‰æ‹©ã€éƒ¨é—¨é€‰æ‹©ã€åŒºåŸŸé€‰æ‹©ï¼‰',
  `dict_type` varchar(200) DEFAULT NULL COMMENT 'å­—å…¸ç±»å‹',
  `settings` varchar(2000) DEFAULT NULL COMMENT 'å…¶å®ƒè®¾ç½®ï¼ˆæ‰©å±•å­—æ®µJSONï¼‰',
  `sort` decimal(10,0) DEFAULT NULL COMMENT 'æ’åºï¼ˆå‡åºï¼‰',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°ï¼ˆ0ï¼šæ­£å¸¸ï¼›1ï¼šåˆ é™¤ï¼‰',
  PRIMARY KEY (`id`),
  KEY `gen_table_column_table_id` (`gen_table_id`),
  KEY `gen_table_column_name` (`name`),
  KEY `gen_table_column_sort` (`sort`),
  KEY `gen_table_column_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ä¸šåŠ¡è¡¨å­—æ®µ';

/*Data for the table `gen_table_column` */

insert  into `gen_table_column`(`id`,`gen_table_id`,`name`,`comments`,`jdbc_type`,`java_type`,`java_field`,`is_pk`,`is_null`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`show_type`,`dict_type`,`settings`,`sort`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('038161ba6479419dafb5818b5ce66633','c05b40ed88ff4c39a4a40fde6d00f992','update_date','update_date','timestamp','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect','',NULL,60,'1','2016-06-22 16:12:41','1','2016-06-22 16:12:41',NULL,'0'),('04f6a2bb15df4a349e957eab2b92716b','6106c35bbc59409b9c2e7510c6da6e67','orderid','orderid','varchar(11)','String','orderid','0','1','1','1','0','0','=','input','',NULL,10,'1','2016-06-22 14:27:30','1','2016-06-22 14:27:30',NULL,'0'),('0902a0cb3e8f434280c20e9d771d0658','aef6f1fc948f4c9ab1c1b780bc471cc2','sex','æ€§åˆ«','char(1)','String','sex','0','1','1','1','1','1','=','radiobox','sex',NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('103fc05c88ff40639875c2111881996a','aef6f1fc948f4c9ab1c1b780bc471cc2','create_date','åˆ›å»ºæ—¶é—´','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('107937dcdb96407dbfb32644dcfbdb82','c05b40ed88ff4c39a4a40fde6d00f992','update_by','update_by','varchar(64)','com.thinkgem.jeesite.modules.sys.entity.User','updateBy.id','0','1','1','1','0','0','=','input','',NULL,50,'1','2016-06-22 16:12:41','1','2016-06-22 16:12:41',NULL,'0'),('12fa38dd986e41908f7fefa5839d1220','6e05c389f3c6415ea34e55e9dfb28934','create_by','åˆ›å»ºè€…','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('195ee9241f954d008fe01625f4adbfef','f6e4dafaa72f4c509636484715f33a96','create_by','åˆ›å»ºè€…','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('19c6478b8ff54c60910c2e4fc3d27503','43d6d5acffa14c258340ce6765e46c6f','id','ç¼–å·','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('1ac6562f753d4e599693840651ab2bf7','43d6d5acffa14c258340ce6765e46c6f','in_date','åŠ å…¥æ—¥æœŸ','date(7)','java.util.Date','inDate','0','1','1','1','0','0','=','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('1b8eb55f65284fa6b0a5879b6d8ad3ec','aef6f1fc948f4c9ab1c1b780bc471cc2','in_date','åŠ å…¥æ—¥æœŸ','date(7)','java.util.Date','inDate','0','1','1','1','0','1','between','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('1d5ca4d114be41e99f8dc42a682ba609','aef6f1fc948f4c9ab1c1b780bc471cc2','user_id','å½’å±ç”¨æˆ·','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','user.id|name','0','1','1','1','1','1','=','userselect',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('21756504ffdc487eb167a823f89c0c06','43d6d5acffa14c258340ce6765e46c6f','update_by','æ›´æ–°è€…','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,10,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('24bbdc0a555e4412a106ab1c5f03008e','f6e4dafaa72f4c509636484715f33a96','parent_ids','æ‰€æœ‰çˆ¶çº§ç¼–å·','varchar2(2000)','String','parentIds','0','0','1','1','0','0','like','input',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('30a762b20e644ea79620b28d128a8696','80d5844ad38040ecba01a36f22dc8e4a','remarks','remarks','varchar(255)','String','remarks','0','1','1','1','1','0','=','textarea','',NULL,70,'1','2016-06-22 14:47:27','1','2016-06-22 14:47:27',NULL,'1'),('33152ce420904594b3eac796a27f0560','6e05c389f3c6415ea34e55e9dfb28934','id','ç¼–å·','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('35af241859624a01917ab64c3f4f0813','aef6f1fc948f4c9ab1c1b780bc471cc2','del_flag','åˆ é™¤æ ‡è®°ï¼ˆ0ï¼šæ­£å¸¸ï¼›1ï¼šåˆ é™¤ï¼‰','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,13,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('398b4a03f06940bfb979ca574e1911e3','aef6f1fc948f4c9ab1c1b780bc471cc2','create_by','åˆ›å»ºè€…','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('3a7cf23ae48a4c849ceb03feffc7a524','43d6d5acffa14c258340ce6765e46c6f','area_id','å½’å±åŒºåŸŸ','nvarchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Area','area.id|name','0','1','1','1','0','0','=','areaselect',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('3d9c32865bb44e85af73381df0ffbf3d','43d6d5acffa14c258340ce6765e46c6f','update_date','æ›´æ–°æ—¶é—´','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,11,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('416c76d2019b4f76a96d8dc3a8faf84c','f6e4dafaa72f4c509636484715f33a96','update_date','æ›´æ–°æ—¶é—´','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('446d7ed1e7f541058eab6c361125e0ad','6106c35bbc59409b9c2e7510c6da6e67','ordername','ordername','varchar(50)','String','ordername','0','1','1','1','0','0','=','input','',NULL,20,'1','2016-06-22 14:27:31','1','2016-06-22 14:27:31',NULL,'0'),('46e6d8283270493687085d29efdecb05','f6e4dafaa72f4c509636484715f33a96','del_flag','åˆ é™¤æ ‡è®°ï¼ˆ0ï¼šæ­£å¸¸ï¼›1ï¼šåˆ é™¤ï¼‰','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,11,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('4a0a1fff86ca46519477d66b82e01991','aef6f1fc948f4c9ab1c1b780bc471cc2','name','åç§°','nvarchar2(100)','String','name','0','1','1','1','1','1','like','input',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('4c8ef12cb6924b9ba44048ba9913150b','43d6d5acffa14c258340ce6765e46c6f','create_date','åˆ›å»ºæ—¶é—´','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('50129bfc7bfb4d8b8dec55f254470f20','c05b40ed88ff4c39a4a40fde6d00f992','id','id','varchar(64)','String','id','0','1','1','0','0','0','=','input','',NULL,10,'1','2016-06-22 16:12:41','1','2016-06-22 16:12:41',NULL,'0'),('53d65a3d306d4fac9e561db9d3c66912','6e05c389f3c6415ea34e55e9dfb28934','del_flag','åˆ é™¤æ ‡è®°ï¼ˆ0ï¼šæ­£å¸¸ï¼›1ï¼šåˆ é™¤ï¼‰','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('55812b8e320f4741ad16bbda151dedf9','6106c35bbc59409b9c2e7510c6da6e67','createtime','createtime','datetime','java.util.Date','createtime','0','1','1','1','0','0','=','dateselect','',NULL,40,'1','2016-06-22 14:27:31','1','2016-06-22 14:27:31',NULL,'0'),('56fa71c0bd7e4132931874e548dc9ba5','6e05c389f3c6415ea34e55e9dfb28934','update_by','æ›´æ–°è€…','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('5a4a1933c9c844fdba99de043dc8205e','aef6f1fc948f4c9ab1c1b780bc471cc2','update_by','æ›´æ–°è€…','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,10,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('5d414576a02c4c54a5651c8bd47d5de8','80d5844ad38040ecba01a36f22dc8e4a','create_by','create_by','varchar(64)','com.thinkgem.jeesite.modules.sys.entity.User','createBy.id','0','1','1','0','0','0','=','input','',NULL,30,'1','2016-06-22 14:47:27','1','2016-06-22 14:47:27',NULL,'1'),('5e5c69bd3eaa4dcc9743f361f3771c08','aef6f1fc948f4c9ab1c1b780bc471cc2','id','ç¼–å·','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('633f5a49ec974c099158e7b3e6bfa930','f6e4dafaa72f4c509636484715f33a96','name','åç§°','nvarchar2(100)','String','name','0','0','1','1','1','1','like','input',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('6342930f4c0d4df69f33011f00115255','c05b40ed88ff4c39a4a40fde6d00f992','create_by','create_by','varchar(64)','com.thinkgem.jeesite.modules.sys.entity.User','createBy.id','0','1','1','0','0','0','=','input','',NULL,30,'1','2016-06-22 16:12:41','1','2016-06-22 16:12:41',NULL,'0'),('652491500f2641ffa7caf95a93e64d34','6e05c389f3c6415ea34e55e9dfb28934','update_date','æ›´æ–°æ—¶é—´','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('6763ff6dc7cd4c668e76cf9b697d3ff6','f6e4dafaa72f4c509636484715f33a96','sort','æ’åº','number(10)','Integer','sort','0','0','1','1','1','0','=','input',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('67d0331f809a48ee825602659f0778e8','43d6d5acffa14c258340ce6765e46c6f','name','åç§°','nvarchar2(100)','String','name','0','1','1','1','1','1','like','input',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('68345713bef3445c906f70e68f55de38','6e05c389f3c6415ea34e55e9dfb28934','test_data_main_id','ä¸šåŠ¡ä¸»è¡¨','varchar2(64)','String','testDataMain.id','0','1','1','1','0','0','=','input',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('71ea4bc10d274911b405f3165fc1bb1a','aef6f1fc948f4c9ab1c1b780bc471cc2','area_id','å½’å±åŒºåŸŸ','nvarchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Area','area.id|name','0','1','1','1','1','1','=','areaselect',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('784e48f40322456a9ee5d3a44277d6f9','80d5844ad38040ecba01a36f22dc8e4a','create_date','create_date','timestamp','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect','',NULL,40,'1','2016-06-22 14:47:27','1','2016-06-22 14:47:27',NULL,'1'),('7f871058d94c4d9a89084be7c9ce806d','6e05c389f3c6415ea34e55e9dfb28934','remarks','å¤‡æ³¨ä¿¡æ¯','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('80a83d6bc055482286e9102a828b3242','c05b40ed88ff4c39a4a40fde6d00f992','remarks','remarks','varchar(255)','String','remarks','0','1','1','1','1','0','=','textarea','',NULL,70,'1','2016-06-22 16:12:41','1','2016-06-22 16:12:41',NULL,'0'),('8966d6e63f0e44b0a7563bdfb77b364a','6106c35bbc59409b9c2e7510c6da6e67','type','type','int(11)','String','type','0','1','1','1','0','0','=','input','',NULL,30,'1','2016-06-22 14:27:31','1','2016-06-22 14:27:31',NULL,'0'),('8b48774cfe184913b8b5eb17639cf12d','43d6d5acffa14c258340ce6765e46c6f','create_by','åˆ›å»ºè€…','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8b7cf0525519474ebe1de9e587eb7067','6e05c389f3c6415ea34e55e9dfb28934','create_date','åˆ›å»ºæ—¶é—´','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8b9de88df53e485d8ef461c4b1824bc1','43d6d5acffa14c258340ce6765e46c6f','user_id','å½’å±ç”¨æˆ·','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','user.id|name','0','1','1','1','1','1','=','userselect',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8da38dbe5fe54e9bb1f9682c27fbf403','aef6f1fc948f4c9ab1c1b780bc471cc2','remarks','å¤‡æ³¨ä¿¡æ¯','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,12,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('92481c16a0b94b0e8bba16c3c54eb1e4','f6e4dafaa72f4c509636484715f33a96','create_date','åˆ›å»ºæ—¶é—´','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('9a012c1d2f934dbf996679adb7cc827a','f6e4dafaa72f4c509636484715f33a96','parent_id','çˆ¶çº§ç¼–å·','varchar2(64)','This','parent.id|name','0','0','1','1','0','0','=','treeselect',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('a706e223f3c04eaeb7a13755f8f2ece9','80d5844ad38040ecba01a36f22dc8e4a','update_date','update_date','timestamp','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect','',NULL,60,'1','2016-06-22 14:47:27','1','2016-06-22 14:47:27',NULL,'1'),('ad3bf0d4b44b4528a5211a66af88f322','aef6f1fc948f4c9ab1c1b780bc471cc2','office_id','å½’å±éƒ¨é—¨','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Office','office.id|name','0','1','1','1','1','1','=','officeselect',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('af203fe561fe4c588f1a251c22118e1a','80d5844ad38040ecba01a36f22dc8e4a','id','id','varchar(64)','String','id','0','1','1','0','0','0','=','input','',NULL,10,'1','2016-06-22 14:47:27','1','2016-06-22 14:47:27',NULL,'1'),('bb1256a8d1b741f6936d8fed06f45eed','f6e4dafaa72f4c509636484715f33a96','update_by','æ›´æ–°è€…','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('c1aa3ceb164244f78aa4824e371586eb','80d5844ad38040ecba01a36f22dc8e4a','bus_id','bus_id','varchar(64)','String','busId','0','1','1','1','0','0','=','input','',NULL,20,'1','2016-06-22 14:47:27','1','2016-06-22 14:47:27',NULL,'1'),('c56b5ca2fd9b4711b9cfd51de2739cd1','c05b40ed88ff4c39a4a40fde6d00f992','del_flag','del_flag','char(1)','String','delFlag','0','1','1','0','0','0','=','radiobox','del_flag',NULL,80,'1','2016-06-22 16:12:41','1','2016-06-22 16:12:41',NULL,'0'),('ca68a2d403f0449cbaa1d54198c6f350','43d6d5acffa14c258340ce6765e46c6f','office_id','å½’å±éƒ¨é—¨','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Office','office.id|name','0','1','1','1','0','0','=','officeselect',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('cb9c0ec3da26432d9cbac05ede0fd1d0','43d6d5acffa14c258340ce6765e46c6f','remarks','å¤‡æ³¨ä¿¡æ¯','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,12,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('cfcfa06ea61749c9b4c4dbc507e0e580','f6e4dafaa72f4c509636484715f33a96','id','ç¼–å·','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('d410f96f2f934b959cdd83977ee60251','c05b40ed88ff4c39a4a40fde6d00f992','bus_id','bus_id','varchar(64)','String','busId','0','1','1','1','0','0','=','input','',NULL,20,'1','2016-06-22 16:12:41','1','2016-06-22 16:12:41',NULL,'0'),('d5c2d932ae904aa8a9f9ef34cd36fb0b','43d6d5acffa14c258340ce6765e46c6f','sex','æ€§åˆ«','char(1)','String','sex','0','1','1','1','0','1','=','select','sex',NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('dc616812f661435485f10214b41f844e','c05b40ed88ff4c39a4a40fde6d00f992','create_date','create_date','timestamp','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect','',NULL,40,'1','2016-06-22 16:12:41','1','2016-06-22 16:12:41',NULL,'0'),('e64050a2ebf041faa16f12dda5dcf784','6e05c389f3c6415ea34e55e9dfb28934','name','åç§°','nvarchar2(100)','String','name','0','1','1','1','1','1','like','input',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('e8d11127952d4aa288bb3901fc83127f','43d6d5acffa14c258340ce6765e46c6f','del_flag','åˆ é™¤æ ‡è®°ï¼ˆ0ï¼šæ­£å¸¸ï¼›1ï¼šåˆ é™¤ï¼‰','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,13,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('eb2e5afd13f147a990d30e68e7f64e12','aef6f1fc948f4c9ab1c1b780bc471cc2','update_date','æ›´æ–°æ—¶é—´','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,11,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('eea7329c75574f88a9ca2290a2e8e9dd','80d5844ad38040ecba01a36f22dc8e4a','update_by','update_by','varchar(64)','com.thinkgem.jeesite.modules.sys.entity.User','updateBy.id','0','1','1','1','0','0','=','input','',NULL,50,'1','2016-06-22 14:47:27','1','2016-06-22 14:47:27',NULL,'1'),('f09d0a7299154bf08530b50388df7f99','80d5844ad38040ecba01a36f22dc8e4a','del_flag','del_flag','char(1)','String','delFlag','0','1','1','0','0','0','=','radiobox','del_flag',NULL,80,'1','2016-06-22 14:47:27','1','2016-06-22 14:47:27',NULL,'1'),('f5ed8c82bad0413fbfcccefa95931358','f6e4dafaa72f4c509636484715f33a96','remarks','å¤‡æ³¨ä¿¡æ¯','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,10,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0');

/*Table structure for table `gen_template` */

DROP TABLE IF EXISTS `gen_template`;

CREATE TABLE `gen_template` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `name` varchar(200) DEFAULT NULL COMMENT 'åç§°',
  `category` varchar(2000) DEFAULT NULL COMMENT 'åˆ†ç±»',
  `file_path` varchar(500) DEFAULT NULL COMMENT 'ç”Ÿæˆæ–‡ä»¶è·¯å¾„',
  `file_name` varchar(200) DEFAULT NULL COMMENT 'ç”Ÿæˆæ–‡ä»¶å',
  `content` text COMMENT 'å†…å®¹',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) DEFAULT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°ï¼ˆ0ï¼šæ­£å¸¸ï¼›1ï¼šåˆ é™¤ï¼‰',
  PRIMARY KEY (`id`),
  KEY `gen_template_del_falg` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ä»£ç æ¨¡æ¿è¡¨';

/*Data for the table `gen_template` */

/*Table structure for table `oa_leave` */

DROP TABLE IF EXISTS `oa_leave`;

CREATE TABLE `oa_leave` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `process_instance_id` varchar(64) DEFAULT NULL COMMENT 'æµç¨‹å®ä¾‹ç¼–å·',
  `start_time` datetime DEFAULT NULL COMMENT 'å¼€å§‹æ—¶é—´',
  `end_time` datetime DEFAULT NULL COMMENT 'ç»“æŸæ—¶é—´',
  `leave_type` varchar(20) DEFAULT NULL COMMENT 'è¯·å‡ç±»å‹',
  `reason` varchar(255) DEFAULT NULL COMMENT 'è¯·å‡ç†ç”±',
  `apply_time` datetime DEFAULT NULL COMMENT 'ç”³è¯·æ—¶é—´',
  `reality_start_time` datetime DEFAULT NULL COMMENT 'å®é™…å¼€å§‹æ—¶é—´',
  `reality_end_time` datetime DEFAULT NULL COMMENT 'å®é™…ç»“æŸæ—¶é—´',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `oa_leave_create_by` (`create_by`),
  KEY `oa_leave_process_instance_id` (`process_instance_id`),
  KEY `oa_leave_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='è¯·å‡æµç¨‹è¡¨';

/*Data for the table `oa_leave` */

/*Table structure for table `oa_notify` */

DROP TABLE IF EXISTS `oa_notify`;

CREATE TABLE `oa_notify` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `type` char(1) DEFAULT NULL COMMENT 'ç±»å‹',
  `title` varchar(200) DEFAULT NULL COMMENT 'æ ‡é¢˜',
  `content` varchar(2000) DEFAULT NULL COMMENT 'å†…å®¹',
  `files` varchar(2000) DEFAULT NULL COMMENT 'é™„ä»¶',
  `status` char(1) DEFAULT NULL COMMENT 'çŠ¶æ€',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `oa_notify_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='é€šçŸ¥é€šå‘Š';

/*Data for the table `oa_notify` */

/*Table structure for table `oa_notify_record` */

DROP TABLE IF EXISTS `oa_notify_record`;

CREATE TABLE `oa_notify_record` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `oa_notify_id` varchar(64) DEFAULT NULL COMMENT 'é€šçŸ¥é€šå‘ŠID',
  `user_id` varchar(64) DEFAULT NULL COMMENT 'æ¥å—äºº',
  `read_flag` char(1) DEFAULT '0' COMMENT 'é˜…è¯»æ ‡è®°',
  `read_date` date DEFAULT NULL COMMENT 'é˜…è¯»æ—¶é—´',
  PRIMARY KEY (`id`),
  KEY `oa_notify_record_notify_id` (`oa_notify_id`),
  KEY `oa_notify_record_user_id` (`user_id`),
  KEY `oa_notify_record_read_flag` (`read_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='é€šçŸ¥é€šå‘Šå‘é€è®°å½•';

/*Data for the table `oa_notify_record` */

/*Table structure for table `oa_test_audit` */

DROP TABLE IF EXISTS `oa_test_audit`;

CREATE TABLE `oa_test_audit` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `PROC_INS_ID` varchar(64) DEFAULT NULL COMMENT 'æµç¨‹å®ä¾‹ID',
  `USER_ID` varchar(64) DEFAULT NULL COMMENT 'å˜åŠ¨ç”¨æˆ·',
  `OFFICE_ID` varchar(64) DEFAULT NULL COMMENT 'å½’å±éƒ¨é—¨',
  `POST` varchar(255) DEFAULT NULL COMMENT 'å²—ä½',
  `AGE` char(1) DEFAULT NULL COMMENT 'æ€§åˆ«',
  `EDU` varchar(255) DEFAULT NULL COMMENT 'å­¦å†',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT 'è°ƒæ•´åŸå› ',
  `OLDA` varchar(255) DEFAULT NULL COMMENT 'ç°è¡Œæ ‡å‡† è–ªé…¬æ¡£çº§',
  `OLDB` varchar(255) DEFAULT NULL COMMENT 'ç°è¡Œæ ‡å‡† æœˆå·¥èµ„é¢',
  `OLDC` varchar(255) DEFAULT NULL COMMENT 'ç°è¡Œæ ‡å‡† å¹´è–ªæ€»é¢',
  `NEWA` varchar(255) DEFAULT NULL COMMENT 'è°ƒæ•´åæ ‡å‡† è–ªé…¬æ¡£çº§',
  `NEWB` varchar(255) DEFAULT NULL COMMENT 'è°ƒæ•´åæ ‡å‡† æœˆå·¥èµ„é¢',
  `NEWC` varchar(255) DEFAULT NULL COMMENT 'è°ƒæ•´åæ ‡å‡† å¹´è–ªæ€»é¢',
  `ADD_NUM` varchar(255) DEFAULT NULL COMMENT 'æœˆå¢èµ„',
  `EXE_DATE` varchar(255) DEFAULT NULL COMMENT 'æ‰§è¡Œæ—¶é—´',
  `HR_TEXT` varchar(255) DEFAULT NULL COMMENT 'äººåŠ›èµ„æºéƒ¨é—¨æ„è§',
  `LEAD_TEXT` varchar(255) DEFAULT NULL COMMENT 'åˆ†ç®¡é¢†å¯¼æ„è§',
  `MAIN_LEAD_TEXT` varchar(255) DEFAULT NULL COMMENT 'é›†å›¢ä¸»è¦é¢†å¯¼æ„è§',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `OA_TEST_AUDIT_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='å®¡æ‰¹æµç¨‹æµ‹è¯•è¡¨';

/*Data for the table `oa_test_audit` */

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `orderid` varchar(11) DEFAULT NULL,
  `ordername` varchar(50) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order` */

/*Table structure for table `sys_area` */

DROP TABLE IF EXISTS `sys_area`;

CREATE TABLE `sys_area` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `parent_id` varchar(64) NOT NULL COMMENT 'çˆ¶çº§ç¼–å·',
  `parent_ids` varchar(2000) NOT NULL COMMENT 'æ‰€æœ‰çˆ¶çº§ç¼–å·',
  `name` varchar(100) NOT NULL COMMENT 'åç§°',
  `sort` decimal(10,0) NOT NULL COMMENT 'æ’åº',
  `code` varchar(100) DEFAULT NULL COMMENT 'åŒºåŸŸç¼–ç ',
  `type` char(1) DEFAULT NULL COMMENT 'åŒºåŸŸç±»å‹',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='åŒºåŸŸè¡¨';

/*Data for the table `sys_area` */

insert  into `sys_area`(`id`,`parent_id`,`parent_ids`,`name`,`sort`,`code`,`type`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','0','0,','ä¸­å›½',10,'100000','1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','å±±ä¸œçœ',20,'110000','2','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','2','0,1,2,','æµå—å¸‚',30,'110101','3','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','3','0,1,2,3,','å†åŸåŒº',40,'110102','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','3','0,1,2,3,','å†ä¸‹åŒº',50,'110104','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','3','0,1,2,3,','é«˜æ–°åŒº',60,'110105','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');

/*Table structure for table `sys_dict` */

DROP TABLE IF EXISTS `sys_dict`;

CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `value` varchar(100) NOT NULL COMMENT 'æ•°æ®å€¼',
  `label` varchar(100) NOT NULL COMMENT 'æ ‡ç­¾å',
  `type` varchar(100) NOT NULL COMMENT 'ç±»å‹',
  `description` varchar(100) NOT NULL COMMENT 'æè¿°',
  `sort` decimal(10,0) NOT NULL COMMENT 'æ’åºï¼ˆå‡åºï¼‰',
  `parent_id` varchar(64) DEFAULT '0' COMMENT 'çˆ¶çº§ç¼–å·',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='å­—å…¸è¡¨';

/*Data for the table `sys_dict` */

insert  into `sys_dict`(`id`,`value`,`label`,`type`,`description`,`sort`,`parent_id`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','0','æ­£å¸¸','del_flag','åˆ é™¤æ ‡è®°',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','yellow','é»„è‰²','color','é¢œè‰²å€¼',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('100','java.util.Date','Date','gen_java_type','Javaç±»å‹\0\0',50,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('101','com.thinkgem.jeesite.modules.sys.entity.User','User','gen_java_type','Javaç±»å‹\0\0',60,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('102','com.thinkgem.jeesite.modules.sys.entity.Office','Office','gen_java_type','Javaç±»å‹\0\0',70,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('103','com.thinkgem.jeesite.modules.sys.entity.Area','Area','gen_java_type','Javaç±»å‹\0\0',80,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('104','Custom','Custom','gen_java_type','Javaç±»å‹\0\0',90,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('105','1','ä¼šè®®é€šå‘Š\0\0\0\0','oa_notify_type','é€šçŸ¥é€šå‘Šç±»å‹',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('106','2','å¥–æƒ©é€šå‘Š\0\0\0\0','oa_notify_type','é€šçŸ¥é€šå‘Šç±»å‹',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('107','3','æ´»åŠ¨é€šå‘Š\0\0\0\0','oa_notify_type','é€šçŸ¥é€šå‘Šç±»å‹',30,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('108','0','è‰ç¨¿','oa_notify_status','é€šçŸ¥é€šå‘ŠçŠ¶æ€',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('109','1','å‘å¸ƒ','oa_notify_status','é€šçŸ¥é€šå‘ŠçŠ¶æ€',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('11','orange','æ©™è‰²','color','é¢œè‰²å€¼',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('110','0','æœªè¯»','oa_notify_read','é€šçŸ¥é€šå‘ŠçŠ¶æ€',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('111','1','å·²è¯»','oa_notify_read','é€šçŸ¥é€šå‘ŠçŠ¶æ€',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('12','default','é»˜è®¤ä¸»é¢˜','theme','ä¸»é¢˜æ–¹æ¡ˆ',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','cerulean','å¤©è“ä¸»é¢˜','theme','ä¸»é¢˜æ–¹æ¡ˆ',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','readable','æ©™è‰²ä¸»é¢˜','theme','ä¸»é¢˜æ–¹æ¡ˆ',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','united','çº¢è‰²ä¸»é¢˜','theme','ä¸»é¢˜æ–¹æ¡ˆ',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','flat','Flatä¸»é¢˜','theme','ä¸»é¢˜æ–¹æ¡ˆ',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','1','å›½å®¶','sys_area_type','åŒºåŸŸç±»å‹',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','2','çœä»½ã€ç›´è¾–å¸‚','sys_area_type','åŒºåŸŸç±»å‹',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','3','åœ°å¸‚','sys_area_type','åŒºåŸŸç±»å‹',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','åˆ é™¤','del_flag','åˆ é™¤æ ‡è®°',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','4','åŒºå¿','sys_area_type','åŒºåŸŸç±»å‹',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','1','å…¬å¸','sys_office_type','æœºæ„ç±»å‹',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','2','éƒ¨é—¨','sys_office_type','æœºæ„ç±»å‹',70,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','3','å°ç»„','sys_office_type','æœºæ„ç±»å‹',80,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','4','å…¶å®ƒ','sys_office_type','æœºæ„ç±»å‹',90,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','1','ç»¼åˆéƒ¨','sys_office_common','å¿«æ·é€šç”¨éƒ¨é—¨',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','2','å¼€å‘éƒ¨','sys_office_common','å¿«æ·é€šç”¨éƒ¨é—¨',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','3','äººåŠ›éƒ¨','sys_office_common','å¿«æ·é€šç”¨éƒ¨é—¨',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('28','1','ä¸€çº§','sys_office_grade','æœºæ„ç­‰çº§',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','2','äºŒçº§','sys_office_grade','æœºæ„ç­‰çº§',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','æ˜¾ç¤º','show_hide','æ˜¾ç¤º/éšè—',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','3','ä¸‰çº§','sys_office_grade','æœºæ„ç­‰çº§',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','4','å››çº§','sys_office_grade','æœºæ„ç­‰çº§',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','1','æ‰€æœ‰æ•°æ®','sys_data_scope','æ•°æ®èŒƒå›´',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('33','2','æ‰€åœ¨å…¬å¸åŠä»¥ä¸‹æ•°æ®','sys_data_scope','æ•°æ®èŒƒå›´',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34','3','æ‰€åœ¨å…¬å¸æ•°æ®','sys_data_scope','æ•°æ®èŒƒå›´',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('35','4','æ‰€åœ¨éƒ¨é—¨åŠä»¥ä¸‹æ•°æ®','sys_data_scope','æ•°æ®èŒƒå›´',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','5','æ‰€åœ¨éƒ¨é—¨æ•°æ®','sys_data_scope','æ•°æ®èŒƒå›´',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','8','ä»…æœ¬äººæ•°æ®','sys_data_scope','æ•°æ®èŒƒå›´',90,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('38','9','æŒ‰æ˜ç»†è®¾ç½®','sys_data_scope','æ•°æ®èŒƒå›´',100,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('39','1','ç³»ç»Ÿç®¡ç†','sys_user_type','ç”¨æˆ·ç±»å‹',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','0','éšè—','show_hide','æ˜¾ç¤º/éšè—',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','2','éƒ¨é—¨ç»ç†','sys_user_type','ç”¨æˆ·ç±»å‹',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('41','3','æ™®é€šç”¨æˆ·','sys_user_type','ç”¨æˆ·ç±»å‹',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('42','basic','åŸºç¡€ä¸»é¢˜','cms_theme','ç«™ç‚¹ä¸»é¢˜',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('43','blue','è“è‰²ä¸»é¢˜','cms_theme','ç«™ç‚¹ä¸»é¢˜',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('44','red','çº¢è‰²ä¸»é¢˜','cms_theme','ç«™ç‚¹ä¸»é¢˜',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('45','article','æ–‡ç« æ¨¡å‹','cms_module','æ ç›®æ¨¡å‹',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','picture','å›¾ç‰‡æ¨¡å‹','cms_module','æ ç›®æ¨¡å‹',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('47','download','ä¸‹è½½æ¨¡å‹','cms_module','æ ç›®æ¨¡å‹',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('48','link','é“¾æ¥æ¨¡å‹','cms_module','æ ç›®æ¨¡å‹',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('49','special','ä¸“é¢˜æ¨¡å‹','cms_module','æ ç›®æ¨¡å‹',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('5','1','æ˜¯','yes_no','æ˜¯/å¦',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','0','é»˜è®¤å±•ç°æ–¹å¼','cms_show_modes','å±•ç°æ–¹å¼',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','1','é¦–æ ç›®å†…å®¹åˆ—è¡¨','cms_show_modes','å±•ç°æ–¹å¼',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','2','æ ç›®ç¬¬ä¸€æ¡å†…å®¹','cms_show_modes','å±•ç°æ–¹å¼',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','0','å‘å¸ƒ','cms_del_flag','å†…å®¹çŠ¶æ€',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('54','1','åˆ é™¤','cms_del_flag','å†…å®¹çŠ¶æ€',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('55','2','å®¡æ ¸','cms_del_flag','å†…å®¹çŠ¶æ€',15,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('56','1','é¦–é¡µç„¦ç‚¹å›¾','cms_posid','æ¨èä½',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('57','2','æ ç›®é¡µæ–‡ç« æ¨è','cms_posid','æ¨èä½',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('58','1','å’¨è¯¢','cms_guestbook','ç•™è¨€æ¿åˆ†ç±»',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('59','2','å»ºè®®','cms_guestbook','ç•™è¨€æ¿åˆ†ç±»',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','0','å¦','yes_no','æ˜¯/å¦',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('60','3','æŠ•è¯‰','cms_guestbook','ç•™è¨€æ¿åˆ†ç±»',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('61','4','å…¶å®ƒ','cms_guestbook','ç•™è¨€æ¿åˆ†ç±»',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('62','1','å…¬ä¼‘','oa_leave_type','è¯·å‡ç±»å‹',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('63','2','ç—…å‡','oa_leave_type','è¯·å‡ç±»å‹',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('64','3','äº‹å‡','oa_leave_type','è¯·å‡ç±»å‹',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('65','4','è°ƒä¼‘','oa_leave_type','è¯·å‡ç±»å‹',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('66','5','å©šå‡','oa_leave_type','è¯·å‡ç±»å‹',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('67','1','æ¥å…¥æ—¥å¿—','sys_log_type','æ—¥å¿—ç±»å‹',30,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('68','2','å¼‚å¸¸æ—¥å¿—','sys_log_type','æ—¥å¿—ç±»å‹',40,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('69','leave','è¯·å‡æµç¨‹','act_type','æµç¨‹ç±»å‹',10,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('7','red','çº¢è‰²','color','é¢œè‰²å€¼',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('70','test_audit','å®¡æ‰¹æµ‹è¯•æµç¨‹','act_type','æµç¨‹ç±»å‹',20,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('71','1','åˆ†ç±»1','act_category','æµç¨‹åˆ†ç±»',10,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('72','2','åˆ†ç±»2','act_category','æµç¨‹åˆ†ç±»',20,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('73','crud','å¢åˆ æ”¹æŸ¥','gen_category','ä»£ç ç”Ÿæˆåˆ†ç±»',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('74','crud_many','å¢åˆ æ”¹æŸ¥ï¼ˆåŒ…å«ä»è¡¨ï¼‰','gen_category','ä»£ç ç”Ÿæˆåˆ†ç±»',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('75','tree','æ ‘ç»“æ„','gen_category','ä»£ç ç”Ÿæˆåˆ†ç±»',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('76','=','=','gen_query_type','æŸ¥è¯¢æ–¹å¼',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('77','!=','!=','gen_query_type','æŸ¥è¯¢æ–¹å¼',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('78','&gt;','&gt;','gen_query_type','æŸ¥è¯¢æ–¹å¼',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('79','&lt;','&lt;','gen_query_type','æŸ¥è¯¢æ–¹å¼',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('8','green','ç»¿è‰²','color','é¢œè‰²å€¼',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('80','between','Between','gen_query_type','æŸ¥è¯¢æ–¹å¼',50,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('81','like','Like','gen_query_type','æŸ¥è¯¢æ–¹å¼',60,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('82','left_like','Left Like','gen_query_type','æŸ¥è¯¢æ–¹å¼',70,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('83','right_like','Right Like','gen_query_type','æŸ¥è¯¢æ–¹å¼',80,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('84','input','æ–‡æœ¬æ¡†','gen_show_type','å­—æ®µç”Ÿæˆæ–¹æ¡ˆ',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('85','textarea','æ–‡æœ¬åŸŸ','gen_show_type','å­—æ®µç”Ÿæˆæ–¹æ¡ˆ',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('86','select','ä¸‹æ‹‰æ¡†','gen_show_type','å­—æ®µç”Ÿæˆæ–¹æ¡ˆ',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('87','checkbox','å¤é€‰æ¡†','gen_show_type','å­—æ®µç”Ÿæˆæ–¹æ¡ˆ',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('88','radiobox','å•é€‰æ¡†','gen_show_type','å­—æ®µç”Ÿæˆæ–¹æ¡ˆ',50,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('89','dateselect','æ—¥æœŸé€‰æ‹©','gen_show_type','å­—æ®µç”Ÿæˆæ–¹æ¡ˆ',60,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('9','blue','è“è‰²','color','é¢œè‰²å€¼',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('90','userselect','äººå‘˜é€‰æ‹©\0','gen_show_type','å­—æ®µç”Ÿæˆæ–¹æ¡ˆ',70,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('91','officeselect','éƒ¨é—¨é€‰æ‹©','gen_show_type','å­—æ®µç”Ÿæˆæ–¹æ¡ˆ',80,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('92','areaselect','åŒºåŸŸé€‰æ‹©','gen_show_type','å­—æ®µç”Ÿæˆæ–¹æ¡ˆ',90,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('93','String','String','gen_java_type','Javaç±»å‹',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('94','Long','Long','gen_java_type','Javaç±»å‹',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('95','dao','ä»…æŒä¹…å±‚','gen_category','ä»£ç ç”Ÿæˆåˆ†ç±»\0\0\0\0\0\0',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('96','1','ç”·','sex','æ€§åˆ«',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'0'),('97','2','å¥³','sex','æ€§åˆ«',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'0'),('98','Integer','Integer','gen_java_type','Javaç±»å‹\0\0',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('99','Double','Double','gen_java_type','Javaç±»å‹\0\0',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1');

/*Table structure for table `sys_log` */

DROP TABLE IF EXISTS `sys_log`;

CREATE TABLE `sys_log` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `type` char(1) DEFAULT '1' COMMENT 'æ—¥å¿—ç±»å‹',
  `title` varchar(255) DEFAULT '' COMMENT 'æ—¥å¿—æ ‡é¢˜',
  `create_by` varchar(64) DEFAULT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT 'æ“ä½œIPåœ°å€',
  `user_agent` varchar(255) DEFAULT NULL COMMENT 'ç”¨æˆ·ä»£ç†',
  `request_uri` varchar(255) DEFAULT NULL COMMENT 'è¯·æ±‚URI',
  `method` varchar(5) DEFAULT NULL COMMENT 'æ“ä½œæ–¹å¼',
  `params` text COMMENT 'æ“ä½œæäº¤çš„æ•°æ®',
  `exception` text COMMENT 'å¼‚å¸¸ä¿¡æ¯',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æ—¥å¿—è¡¨';

/*Data for the table `sys_log` */

insert  into `sys_log`(`id`,`type`,`title`,`create_by`,`create_date`,`remote_addr`,`user_agent`,`request_uri`,`method`,`params`,`exception`) values ('03c2d4aa5a2b4ab5919815b6ccc49e37','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 16:20:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a','GET','login=',''),('03c9cc192da949f8a3f0bb6a29aa6c47','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†','1','2016-06-22 15:13:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/role/','GET','tabPageId=jerichotabiframe_9',''),('056ab73a1e9645e2b9b4cfb67e8307d6','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 16:24:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('0614bb5993ad4135ad9e26a8f20d100d','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 15:40:00','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('0685e21aafd0416cba60486190b15984','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 14:56:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('068a2d237961471c919646225eb7d510','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ä¸šåŠ¡è¡¨é…ç½®','1','2016-06-22 15:43:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/gen/genTable','GET','tabPageId=jerichotabiframe_2',''),('07008e295b6a4167ac7c8d278f9b187e','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 14:58:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a','GET','login=',''),('0726dd6e6a92492195e4b8955cc89f6c','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 14:54:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('08285b24d25d4c32ae3cc325015960a9','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:05:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=20',''),('09d26a830a22463d8d49211bd557a77f','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 14:55:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=2',''),('09efbcbfe50a4f00ae04d0a5ebb4c036','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 15:38:01','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('0b206a98f9454b87b6141063a9b81224','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 16:24:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=7cdd2e5cc9ec4a498bd2c24899720023',''),('0caa46a5ecc34bc086c104faa2b7df11','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 14:59:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('0dc053ac30c24d989280b0c337cb9e0a','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ä¸šåŠ¡è¡¨é…ç½®','1','2016-06-22 14:29:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/gen/genTable','GET','tabPageId=jerichotabiframe_1',''),('0e7361a6d660479780f5bad7f9330388','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2016-06-22 15:13:27','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_1',''),('120e9c49d23b46cdbb9fcd41821c6c8a','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:17:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/demo/businessinfo/form','GET','',''),('129a9c0081334349a34f9d9157ff4baf','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-æ ‘ç»“æ„-æŸ¥çœ‹','1','2016-06-22 15:16:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/test/testTree/','GET','',''),('12c176a70d0d4203811d86d434ddf1eb','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2016-06-22 15:08:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/save','POST','id=&parent.id=13&parent.name=æœºæ„ç”¨æˆ·&name=ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•&href=/sys/demo/businessinfo/list&target=&icon=&sort=80&isShow=1&permission=bus:*&remarks=',''),('1430467f7b254c47abd479be1f179755','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-æ ‘ç»“æ„','1','2016-06-22 16:12:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/test/testTree','GET','tabPageId=jerichotabiframe_8',''),('15557d584d984f8384ca3a66f7c5b6a1','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 16:17:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/role/form','GET','id=4',''),('17365256adec46a98cf9e5a38e5f7f08','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 15:13:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('187a369eb84a43d7b204169fe73e5832','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 16:11:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('1a14ad6756e445ca83e6c5af82655bc0','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 16:15:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','tabPageId=jerichotabiframe_19',''),('1a6b909789d543c5865a5b721faf171b','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-21 10:17:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('1d043bc0a72e40dea08fc2c650e3b71a','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2016-06-22 16:15:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/cms/none','GET','',''),('1d423cec83324adc9f740062ac73834f','1','åœ¨çº¿åŠå…¬-ä¸šåŠ¡è®¢å•-ä¸šåŠ¡è®¢å•è¯¦æƒ…','1','2016-06-22 16:25:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/order/businessinfo/form','GET','tabPageId=jerichotabiframe_4',''),('1f9f0d4eff3f4246b20162cc6f41e37b','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2016-06-22 16:38:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_1',''),('1fc4b1e999f745618ba531904c5e6490','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-åŒºåŸŸç®¡ç†','1','2016-06-22 16:15:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/area/','GET','tabPageId=jerichotabiframe_18',''),('238ea78134a94aec890e00ee7245d8d9','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:37:43','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/menu/form','GET','id=c0d3d60f17be4391a52af098a6279ba3',''),('23cd833913e54b238a1fd06200b7942d','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 15:36:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('244c16ccc4c243cd9cfc0bfd95f20aa5','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:11:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/demo/businessinfo/list','GET','tabPageId=jerichotabiframe_2',''),('25b39b5f8841433699a2e29cd219f742','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 15:13:23','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a','GET','login=',''),('25f7de9102104134876ffe21971ffa03','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 16:17:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('276ac3f565114d3b85b0afcc76b30c79','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-ä¸»å­è¡¨-æŸ¥çœ‹','1','2016-06-22 14:45:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/test/testDataMain/form','GET','',''),('282e5cc628cc43ea8b35cf558d1a469d','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 15:10:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','tabPageId=jerichotabiframe_13',''),('28db5a36e79d4f1da81ade1ea5b91d15','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 14:26:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a','GET','login=',''),('2903dbd3ddb745caa96f36f4c4aeecd6','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 15:10:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('299557b158ce4659899a4f6a9bdab115','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:13:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('2a08996b7be24e10a94d01e58bc3ed44','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 15:38:47','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a','GET','login=',''),('2a12357bb5b741769a736e82e8cb5f23','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 14:26:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('2d54cc016fe046db898fb2e66a119fd1','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-æœºæ„ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:10:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/office/list','GET','id=&parentIds=',''),('3032fc6433b44e7494e07311eb7cf6c2','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-åŒºåŸŸç®¡ç†','1','2016-06-22 15:12:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/area/','GET','tabPageId=jerichotabiframe_4',''),('30bd4a772d7042f8911c9e853a201141','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:10:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=c0d3d60f17be4391a52af098a6279ba3',''),('3219063bbd6e4e6b9902b6b1d2910030','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†','1','2016-06-22 15:00:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/role/','GET','repage=',''),('3250032632914877bb0d0b561bce78f2','1','ç³»ç»Ÿç™»å½•','1','2016-06-21 10:17:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a','GET','login=',''),('32a4f3664e5c4d579b4cd41a02a015ad','1','ç³»ç»Ÿç™»å½•','1','2016-06-21 11:47:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/tree','GET','parentId=2',''),('32f3caacd75b49a7947bf72a32e96151','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 15:13:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('342620842eca468191cc7edfbf1c2eb8','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 14:29:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('350d6ef6a277400d990922648f6f681d','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 15:31:45','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/menu/','GET','tabPageId=jerichotabiframe_12',''),('363cc4547c7f47809d5f60a0564a9bbf','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 14:58:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_27',''),('36dbbf0d8bb14a5696b9e7fd1fcd1907','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-æœºæ„ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 16:10:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/office/list','GET','id=&parentIds=',''),('38f2b6e9aa8246a394ee6154a723e992','1','åœ¨çº¿åŠå…¬-ä¸šåŠ¡è®¢å•-ä¸šåŠ¡è®¢å•è¯¦æƒ…','1','2016-06-22 16:38:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/order/businessinfo/form','GET','tabPageId=jerichotabiframe_2',''),('39bafa118d224c5d8096078ceec564e8','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 14:53:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a','GET','login=',''),('3c95c4b1f98e45b58b7dba88b41c5d55','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ','1','2016-06-22 14:58:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/cms/','GET','tabPageId=jerichotabiframe_25',''),('3d27f3891ff343148b2c6b71b368aba3','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:24:50','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/demo/businessinfo/form','GET','tabPageId=jerichotabiframe_2',''),('3fc62c6a4043407b91e9089b9583b494','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 15:11:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('40652b1ab1094bd79a3bd0328663b783','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:24:55','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/demo/businessinfo/form','GET','',''),('41c481ad46064b88b31910906fbc2383','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 14:44:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/gen/genScheme','GET','tabPageId=jerichotabiframe_2',''),('41e30de1bd1b4d04a82f7fc98c478695','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 14:58:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('42658e8394164d4396d7d07d9b246352','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2016-06-22 16:11:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/delete','GET','id=fe541070549c45a2b8a57027a563cb83',''),('42d96802943d433ea6da62e1c699df14','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 15:36:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a','GET','login=',''),('4660d51d820b4b409873c184d27ed3d4','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 15:13:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('47242413d60f43e2a2e5f1042e777903','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-æ ‘ç»“æ„','1','2016-06-22 15:16:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/test/testTree','GET','tabPageId=jerichotabiframe_5',''),('476b4609378b402eaebedac51c41dff6','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:35:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/form','GET','parent.id=2',''),('4914233dcb5d4f8b84df7fd3bf68b8b9','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:41:04','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/menu/form','GET','id=c0d3d60f17be4391a52af098a6279ba3',''),('496f60fb60f249f68416357b5f4d7873','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ä¸šåŠ¡è¡¨é…ç½®','1','2016-06-22 14:31:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/gen/genTable','GET','tabPageId=jerichotabiframe_1',''),('49f928c96a3843f28a4b61b0e0e2110d','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-21 11:47:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('4b1405bcf2ef4e518025fb312cc1ac3e','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 15:39:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('4cfe95f20ca9424585f0e025e3610dd3','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-æœºæ„ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:12:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/office/list','GET','id=&parentIds=',''),('4d0f338729f24412bc3d0dd5b563b864','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2016-06-22 14:29:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_4',''),('4de0577a4c2a47148d3996b3efb59a4a','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 16:38:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a','GET','login=',''),('4edf0d04a422435b8ead98fdafb53bb7','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:18:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/demo/businessinfo/form','GET','id=2acd13ddf3254e599d1b74181ac7e075',''),('4ff59f9f7bdf412fadd4618dc3b3cd54','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:08:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/demo/businessinfo/list','GET','tabPageId=jerichotabiframe_8',''),('504eef2d11eb4196bcb973eaf094a8aa','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ä¸šåŠ¡è¡¨é…ç½®','1','2016-06-22 14:53:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/gen/genTable','GET','tabPageId=jerichotabiframe_1',''),('51105ca1f8bc4a5e8dcd11656484e38b','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ','1','2016-06-22 14:53:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/cms/','GET','tabPageId=jerichotabiframe_3',''),('53670dbbe97546c0ad5428fa49ffe06a','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:40:55','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/user/list','GET','',''),('539e7cf2478e4e779433f328f500d960','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†','1','2016-06-22 15:37:34','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/role/','GET','tabPageId=jerichotabiframe_15',''),('54f1d621242c43d4b25f7fdc6d34ed54','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:11:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('5525e6b888824a389f4af497552dbc69','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-æœºæ„ç®¡ç†','1','2016-06-22 15:12:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/office/','GET','tabPageId=jerichotabiframe_6',''),('5583121b740e494e84af7408a716b4e1','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 15:08:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('57931e64c623486e95f5d80cfc3ead95','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 15:24:44','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('579fe1ee22c24e488d6eaf07530e9a52','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 15:40:00','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a','GET','login=',''),('57f38f49d32c4350abab16af70043fc2','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 15:24:43','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a','GET','login=',''),('58079909feaa4b49a6431fd4f5b8688d','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:38:04','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/user/list','GET','',''),('59e623cd46604b39821b246a5964e640','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ä¸šåŠ¡è¡¨é…ç½®','1','2016-06-22 14:58:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/gen/genTable','GET','tabPageId=jerichotabiframe_23',''),('59e843453d664065bcf50e4dc052fda8','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2016-06-22 16:24:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_1',''),('5a1f90ee7e7948f7a980a7b360ff5788','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 15:36:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('5a6f3bfa1ccf4f30a0bf1c9af2d83231','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:08:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('5a84cfd1ca6e43d8ab26ca837250ff95','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 15:40:58','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/menu/','GET','tabPageId=jerichotabiframe_4',''),('5a937b871ef9430a9348b7c4594db8cb','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-å•è¡¨','1','2016-06-22 14:27:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/test/testData','GET','tabPageId=jerichotabiframe_4',''),('5b19420975c74a49807125d17f91d2d4','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-æœºæ„ç®¡ç†','1','2016-06-22 16:10:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/office/','GET','tabPageId=jerichotabiframe_4',''),('5bddbde728234c4082526bb070777b7a','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:17:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/demo/businessinfo/form','GET','tabPageId=jerichotabiframe_2',''),('5d19a293ae8f429ab41bfedf73cd0a47','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 15:39:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('5da25fb87ab34afb8844d863d1d5bd61','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¿®æ”¹å¯†ç ','1','2016-06-22 14:58:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','tabPageId=jerichotabiframe_1',''),('5e31b04388a9490092c4381e20464645','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ä¸šåŠ¡è¡¨é…ç½®','1','2016-06-22 14:46:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/gen/genTable','GET','tabPageId=jerichotabiframe_1',''),('5e706557e7be4c8089d663c2612f800e','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-å•è¡¨-æŸ¥çœ‹','1','2016-06-22 15:16:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/test/testData/','POST','pageNo=1&pageSize=30&user.id=&user.name=&office.id=&office.name=&area.id=&area.name=&name=&beginInDate=&endInDate=',''),('5ed7d9fd530340d6aa8031b98d6cc735','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-æ ‘ç»“æ„-æŸ¥çœ‹','1','2016-06-22 15:16:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/test/testTree/form','GET','',''),('60f574773cb149ba85694140a8b34279','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 15:08:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/area/','GET','tabPageId=jerichotabiframe_7',''),('61101136857f4edab44f9fcb29d6034f','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ä¸šåŠ¡è¡¨é…ç½®','1','2016-06-22 14:26:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/gen/genTable','GET','tabPageId=jerichotabiframe_1',''),('620eb38f561442c3a451e3bf7c9388b1','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-å­—å…¸ç®¡ç†','1','2016-06-22 16:17:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/dict/','GET','tabPageId=jerichotabiframe_21',''),('628208f1917c49fbad73fb4ff00fb5ba','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 17:01:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a','GET','login=',''),('641b8756c5784a229605bf6ec354be65','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†-ä¿®æ”¹','1','2016-06-22 15:00:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/role/save','POST','id=1&office.id=2&office.name=å…¬å¸é¢†å¯¼&oldName=ç³»ç»Ÿç®¡ç†å‘˜&name=ç³»ç»Ÿç®¡ç†å‘˜&oldEnname=dept&enname=dept&roleType=assignment&sysData=1&useable=1&dataScope=1&menuIds=1,27,28,29,30,71,56,57,58,59,62,88,89,90,63,73,74,64,65,66,69,70,72,31,40,41,42,43,44,45,46,47,48...&officeIds=&remarks=',''),('661fd1a0580143b19eeada55710c1012','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 16:22:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('67c56b2f21cc42ae8ec2b06ad2668247','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 16:22:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a','GET','login=',''),('682df36a82894bc1ae7ddd83cc6566ff','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 15:38:54','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('6baefd680d9e4ee6b94af4cb5034f167','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 16:22:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','tabPageId=jerichotabiframe_5',''),('6be407cb1b0446b38809a2440462a140','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:13:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/demo/businessinfo/form','GET','',''),('6bedcc84283142178b13f96511071528','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ä¸šåŠ¡è¡¨é…ç½®','1','2016-06-22 16:11:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/gen/genTable','GET','tabPageId=jerichotabiframe_2',''),('6c1f588d9133459c84689bec6c2c29f0','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2016-06-22 14:53:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/cms/none','GET','',''),('6ce3ad682f8d4421a68227342feb747c','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 16:22:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_3',''),('6d06f74b7b28497d82605ea023843708','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 14:59:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/role/form','GET','id=1',''),('6e02f38f7bcf4eb9bc7ef9abbca4a5c7','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:13:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/demo/businessinfo/form','GET','',''),('6f15bb857af74d9c9aac440b72e7d963','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 14:58:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('70059e6ab21441ab8be6f293674d39e4','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 16:16:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/form','GET','parent.id=d04beb3092cd4579a223e8fe6b74a71e',''),('721ea331c3fd4aed8d597ac0d43a1072','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ','1','2016-06-22 15:13:32','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/cms/','GET','tabPageId=jerichotabiframe_3',''),('72683958b35d47369bc33d7f316429e1','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2016-06-22 15:13:32','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/cms/tree','GET','',''),('73c892e438b94be7b0911d401c25af66','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2016-06-22 16:16:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/save','POST','id=&parent.id=62&parent.name=åœ¨çº¿åŠå…¬&name=ä¸šåŠ¡è®¢å•&href=&target=&icon=&sort=330&isShow=1&permission=&remarks=',''),('75765dc4edc64298a7f4c47631b0a855','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 16:11:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('7577b746c97f4817b8f3abe2982712fc','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-æœºæ„ç®¡ç†','1','2016-06-22 16:22:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/office/','GET','tabPageId=jerichotabiframe_4',''),('759b1ba2178648db88f447abdab17c0f','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-21 11:47:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_2',''),('75bf84d2bede4101aa9ed5e33b9d9826','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 14:58:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_22',''),('7651ba0474fd4879be2d6d0adf18eedb','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 15:31:36','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/demo/businessinfo/form','GET','tabPageId=jerichotabiframe_8',''),('7719509ef67445458de65c1a5b2dc266','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 15:06:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('7a1ce9ea26f54d9e9a97c47a882cd602','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†','1','2016-06-22 15:31:43','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/role/','GET','tabPageId=jerichotabiframe_11',''),('7a30673460ff48748b444abe9a90dda0','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2016-06-22 15:34:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_3',''),('7b5c0e1407df4ea7a5a5407eb348ec0f','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2016-06-22 15:13:32','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/cms/none','GET','',''),('7b9f6503b141453f9c3bff2d14195a33','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:24:53','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/demo/businessinfo/form','GET','',''),('7c3cb83ddd394e6b99921ff63a729374','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 16:24:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('7ec2e7cbd7074e08b3d32f8d1aed10f1','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 16:15:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/form','GET','parent.id=62',''),('7ee5047114a04c2bbf5ee5e136ebb5b9','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 15:11:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a','GET','login=',''),('7f0ffa0dd06546b5b0af5dd52570d31e','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 15:08:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('7f48a70b32f448558c9bf6a7cc8ea4d0','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 16:31:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('7fd28469af3c4a39b33cc0674f0acf19','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 15:34:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/tree','GET','parentId=62',''),('8101fdeae5184ae1b878671497eb65aa','1','åœ¨çº¿åŠå…¬-ä¸šåŠ¡è®¢å•-ä¸šåŠ¡è®¢å•è¯¦æƒ…','1','2016-06-22 16:31:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/order/businessinfo/form','GET','tabPageId=jerichotabiframe_2',''),('83e0b5064507488ba22611442034d84d','1','ç³»ç»Ÿè®¾ç½®-ä¸šåŠ¡è®¢å•-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:40:14','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/demo/businessinfo/form','GET','id=2acd13ddf3254e599d1b74181ac7e075',''),('8404ac600a784f43998957dc6a9529c1','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ç”Ÿæˆæ–¹æ¡ˆé…ç½®','1','2016-06-22 14:44:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/gen/genScheme','GET','tabPageId=jerichotabiframe_2',''),('86377bb8c47a467c90d5e94d488b0a14','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 14:53:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/form','GET','parent.id=2',''),('874e0235630f40748cd721795d75695e','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 15:36:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('876435d07c354ae1b2b5a746426b3566','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 16:11:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('899387db17e6493dbf1d62f3dfa6624a','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-21 10:24:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','tabPageId=jerichotabiframe_7',''),('89c2322066d54f49a0351819bb6b6091','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 15:15:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('89e83bf9324c4f1c985e9f4a8af13240','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 14:53:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','tabPageId=jerichotabiframe_5',''),('8a848aa57a46446e8bb2e243443f1687','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:31:50','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/menu/form','GET','id=c0d3d60f17be4391a52af098a6279ba3',''),('8aa46c9beeb44427a4be7fab0634966f','1','ç³»ç»Ÿè®¾ç½®-æ—¥å¿—æŸ¥è¯¢-æ—¥å¿—æŸ¥è¯¢','1','2016-06-22 14:59:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/log','GET','tabPageId=jerichotabiframe_4',''),('8b7ae2548d624f0ea43b46ffcc93f79e','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 15:37:37','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/menu/','GET','tabPageId=jerichotabiframe_16',''),('8c7db4ba04e24f75852eee6f09d0b548','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 14:55:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','tabPageId=jerichotabiframe_6',''),('8db22dbaf14d489ebda9dbd70a412c8a','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 14:54:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/form','GET','',''),('9096292650a247788b4189445bebc80a','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 14:29:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a','GET','login=',''),('916c23a96f5e4a52b5802f019fd30146','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 15:39:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('91873b3d59f64b1db4e0680312edd7ff','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 15:17:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('9268ab3721b44f44b4bf14e4fc10d96e','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†','1','2016-06-22 16:18:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/role/','GET','repage=',''),('9378b75fbf3a44aba00a794b46e6165f','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-21 10:25:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_11',''),('93b73cfe2016449ebbb21178d9998d8f','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 15:35:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','tabPageId=jerichotabiframe_6',''),('93d9939ee5624dc1aa71f52dcdbc7235','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 14:53:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_2',''),('941059bd989f48fb8dc1e130afe8fdaf','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ç”Ÿæˆæ–¹æ¡ˆé…ç½®','1','2016-06-22 14:27:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/gen/genScheme','GET','tabPageId=jerichotabiframe_2',''),('942594b9927243d69a029d3c0b490614','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-æœºæ„ç®¡ç†','1','2016-06-22 15:10:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/office/','GET','tabPageId=jerichotabiframe_12',''),('948e0f364a3c406796364520300f047d','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:38:54','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/user/list','GET','',''),('951da89eb66e4452bbe9fcf221f2f47f','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-21 10:24:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_6',''),('9643668d08744c07861f811ebeffbcc5','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:13:34','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/user/list','GET','',''),('9671ba1a8f2648bd82ddb6a25f15a17a','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 15:06:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('968aa27cc83f40c196c618a57e464ffe','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:13:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/demo/businessinfo/form','GET','tabPageId=jerichotabiframe_2',''),('99fa3be2fcd54f8580c0681669091ee4','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†-ä¿®æ”¹','1','2016-06-22 16:18:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/role/save','POST','id=1&office.id=2&office.name=å…¬å¸é¢†å¯¼&oldName=ç³»ç»Ÿç®¡ç†å‘˜&name=ç³»ç»Ÿç®¡ç†å‘˜&oldEnname=dept&enname=dept&roleType=assignment&sysData=1&useable=1&dataScope=1&menuIds=1,27,28,29,30,71,56,57,58,59,62,88,89,90,63,73,74,64,65,66,69,70,72,d04beb3092cd4579a223e8fe6b74a...&officeIds=&remarks=',''),('9d2eb069d94b4310aa8df055b215d9d9','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 14:57:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=14d06fb4b82d4b32902f2f002ebdbd67',''),('9d49cf3afdbf493d986fc53590650f6d','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-ä¸»å­è¡¨','1','2016-06-22 14:45:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/test/testDataMain','GET','tabPageId=jerichotabiframe_6',''),('9e5c18aa3742489195d978dfa77ea549','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:36:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=c0d3d60f17be4391a52af098a6279ba3',''),('9e8a13ffce8147439467702276aa440e','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 15:43:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('9eb20e173f9145f293e88ec873ecfbc2','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-åŒºåŸŸç®¡ç†','1','2016-06-22 15:08:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/area/','GET','tabPageId=jerichotabiframe_5',''),('9fc38b00abdc476dbdef3c0980754eeb','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 14:30:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a','GET','login=',''),('a0013677fed64c509b8abc5dea9be53d','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ç”Ÿæˆæ–¹æ¡ˆé…ç½®','1','2016-06-22 14:47:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/gen/genScheme','GET','tabPageId=jerichotabiframe_2',''),('a01c75bd657a455aba4e7595427b1969','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 16:33:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a','GET','login=',''),('a081c0b43ff64812927c470badeb778f','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:43:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('a09dc62d06184f70855cfdf43e89cb87','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:08:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/demo/businessinfo/list','GET','tabPageId=jerichotabiframe_2',''),('a184be24b43b4a13920aec720711e4b2','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2016-06-22 16:20:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_1',''),('a20129b2a34348bda389623a68f7b496','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-å•è¡¨','1','2016-06-22 15:16:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/test/testData','GET','tabPageId=jerichotabiframe_3',''),('a3f11069c0484717885ad9491a5147ff','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 16:20:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('a467331a7405401283a57212c9441ac1','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 16:10:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/office/','GET','tabPageId=jerichotabiframe_4',''),('a4dbd90606cb4a05a7dd3e9dd20a5182','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2016-06-22 16:33:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_1',''),('a60d2bffb7154c0f86a101147b9f3b23','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ç”Ÿæˆæ–¹æ¡ˆé…ç½®','1','2016-06-22 15:13:39','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/gen/genScheme','GET','tabPageId=jerichotabiframe_6',''),('a68d450b958949c9a8d0d299aaafe3aa','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:05:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=13',''),('a8526cd5ae3d472c98c0623ca2285a0b','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 16:11:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('a8d78950495a42df979dda985a865636','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 14:57:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('a90da1b5b99a43d3b561a814efc2dff2','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 15:11:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('aafcd9b1af9d494d9c820d34985ada91','1','ç³»ç»Ÿè®¾ç½®-ä¸šåŠ¡è®¢å•-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:40:11','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/demo/businessinfo/form','GET','',''),('ab01e43e35664fc0ab08ebc10e115441','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 15:35:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('ab86e4a54395463691e79b12432d073c','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 16:16:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('aba8fe3c06f64f6f83cad49e46ff78fe','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-å•è¡¨','1','2016-06-22 16:12:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/test/testData','GET','tabPageId=jerichotabiframe_4',''),('ac128275c31144b0aa3500776ec01800','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 14:59:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','tabPageId=jerichotabiframe_7',''),('ac26bb4f7f4843b481d98664befabe04','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-æœºæ„ç®¡ç†','1','2016-06-22 15:31:40','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/office/','GET','tabPageId=jerichotabiframe_10',''),('ac32bca377c847c39f91a1228ee03398','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-æœºæ„ç®¡ç†','1','2016-06-22 16:15:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/office/','GET','tabPageId=jerichotabiframe_17',''),('ad01d5dacd2d4685b6c1369f08e0269b','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 16:38:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('ad632d2b31d94979a881ac52464b58a6','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-21 11:47:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','tabPageId=jerichotabiframe_3',''),('adf51f2de36e4a61bb40eba1801d319f','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2016-06-22 14:29:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('af53a516caee42eaaabe4bccf3648ab4','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-å•è¡¨','1','2016-06-22 14:45:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/test/testData','GET','tabPageId=jerichotabiframe_5',''),('afa4d73a469e49b3af341b0d93fbcb6c','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 16:33:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('b02f2107e1dc4c86874d5ce25df1bedc','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 16:24:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('b04aa88061eb4765a98a6e1a16668111','1','åœ¨çº¿åŠå…¬-ä¸šåŠ¡è®¢å•-ä¸šåŠ¡è®¢å•è¯¦æƒ…','1','2016-06-22 17:01:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/order/businessinfo/form','GET','tabPageId=jerichotabiframe_2',''),('b117a7105c494d1b918d8e1a7ea458df','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-æœºæ„ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:31:41','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/office/list','GET','id=&parentIds=',''),('b13f63d1a20b42ec8a314ec3a8f5b65b','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2016-06-22 17:01:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_1',''),('b14cfb532a644ab28d2aac186579c46d','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 14:46:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('b25b4fb3b5754d189ad1a7613ab4622f','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 15:24:48','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('b3fadd3d06a24d2f86575161c116a333','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:17:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('b43d5182b7a64ac0949a1c25a7a41269','1','åœ¨çº¿åŠå…¬-ä¸šåŠ¡è®¢å•-ä¸šåŠ¡è®¢å•è¯¦æƒ…','1','2016-06-22 16:24:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/order/businessinfo/form','GET','tabPageId=jerichotabiframe_2',''),('b51882c066514a81bdd98471b2fbf72b','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-21 10:24:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('b563e0ad892b4b9d8cd1e94996fb5a9a','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 16:18:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/role/form','GET','id=1',''),('b5f18321a0a0405f9a91cbb5f488ac54','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-ä¸»å­è¡¨','1','2016-06-22 15:16:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/test/testDataMain','GET','tabPageId=jerichotabiframe_4',''),('b71b806599da43c58f4e93272e1bc597','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:13:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/demo/businessinfo/form','GET','',''),('b86a953d7676422289bb2917e4655f9a','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:36:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('b8cf2a749f114ba7b71925841ae04a27','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 15:17:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('bb25916cb046407593b5daedaf00801d','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 16:11:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('bbc4388e9dbc4e1091166b2ad5229dcf','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†','1','2016-06-22 14:59:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/role/','GET','tabPageId=jerichotabiframe_8',''),('bbdf8aa4429341829285c4e972aefcb9','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 15:38:48','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('be3074fb3a304ab59bb37d8faa5a7a03','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 14:29:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('bfb33dc8484e4a42a479484d7be51622','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2016-06-22 14:53:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('c1d7839bf9ee4cf2ae1ad819c718e3be','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-åŒºåŸŸç®¡ç†','1','2016-06-22 15:08:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/area/','GET','tabPageId=jerichotabiframe_7',''),('c207e8e4177a4e04a3e9b40e7cfcd2c7','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 15:08:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('c278adf2b2fc46779d021211adf9fd2b','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-å­—å…¸ç®¡ç†','1','2016-06-22 15:00:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/dict/','GET','tabPageId=jerichotabiframe_9',''),('c2790cf82c8e401c938da69951c8403a','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-21 10:17:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('c2f5b10d0daa4080be6ec279b5989e00','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 14:30:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('c376af3653084becb2835e99328ca089','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:12:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=c0d3d60f17be4391a52af098a6279ba3',''),('c760b38fc2304095a1b801ab7eb31d91','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 15:38:04','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('c818a61ec20142af81825ab06eaaa9a1','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2016-06-22 14:29:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/cms/none','GET','',''),('c843e125292c4c1ebd09f60ec902d13a','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:24:48','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/user/list','GET','',''),('c8a33df0f8444e3782f6e7410fe1dc40','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†','1','2016-06-22 16:17:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/role/','GET','tabPageId=jerichotabiframe_20',''),('c9a04b7743874f4bb80f0019d0741e11','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ä¸šåŠ¡è¡¨é…ç½®','1','2016-06-22 15:13:35','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/gen/genTable','GET','tabPageId=jerichotabiframe_5',''),('ca106778ee584d829f5d2f133dddc064','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2016-06-22 15:35:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/save','POST','id=&parent.id=2&parent.name=ç³»ç»Ÿè®¾ç½®&name=ä¸šåŠ¡è®¢å•&href=&target=&icon=&sort=1020&isShow=1&permission=&remarks=',''),('cb948303fe8d4ce09ccf4e23efae6fe5','1','ç³»ç»Ÿè®¾ç½®-ä¸šåŠ¡è®¢å•-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:40:08','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/demo/businessinfo/form','GET','tabPageId=jerichotabiframe_2',''),('cdf11ced30964aa88d63db62ef8c32d2','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2016-06-22 15:13:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/save','POST','id=c0d3d60f17be4391a52af098a6279ba3&parent.id=13&parent.name=æœºæ„ç”¨æˆ·&name=ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•&href=/sys/demo/businessinfo/form&target=&icon=&sort=80&isShow=1&permission=sys:demo:businessinfo:*&remarks=',''),('ce299a4d5c764ec783f7c0d5800b5fb3','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ç”Ÿæˆæ–¹æ¡ˆé…ç½®','1','2016-06-22 16:11:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/gen/genScheme','GET','tabPageId=jerichotabiframe_3',''),('ce94d845440543cc9c41ed11a8c0a825','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 14:53:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('d0a9c25e924b42b1bf2c103920672281','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 14:58:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=14d06fb4b82d4b32902f2f002ebdbd67',''),('d25665949fd749d9ada7c567c1a95d13','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 15:40:03','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('d3befc240db74849a55a56202f447ddc','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ','1','2016-06-22 14:29:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/cms/','GET','tabPageId=jerichotabiframe_5',''),('d3ea0062fc484f959db366299c12f3e9','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 16:24:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a','GET','login=',''),('d4a62748c99f4d5e90175b073e152dfd','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-æœºæ„ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 16:15:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/office/list','GET','id=&parentIds=',''),('d675b495a0b447a9a4a47a3528129513','1','åœ¨çº¿åŠå…¬-ä¸šåŠ¡è®¢å•-ä¸šåŠ¡è®¢å•è¯¦æƒ…','1','2016-06-22 16:24:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/order/businessinfo/form','GET','tabPageId=jerichotabiframe_2',''),('d70ad9f17f5a414181a51897a762b84f','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-21 10:17:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('d77313f44967441ea80f0fbb4eebe694','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:40:03','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/user/list','GET','',''),('d8b06560c76b49f2a3cdce39e2cc457d','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†-å†…å®¹å‘å¸ƒ','1','2016-06-22 16:15:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/cms/','GET','tabPageId=jerichotabiframe_15',''),('d8ca30136106431f8a920ac640fd7591','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:31:36','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/demo/businessinfo/form','GET','tabPageId=jerichotabiframe_8',''),('d8cf7e6676064af8895425b2afa72fde','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-é€šå‘Šç®¡ç†','1','2016-06-22 15:13:29','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/oa/oaNotify','GET','tabPageId=jerichotabiframe_2',''),('da138e68c7244c80a8a6959907f8f535','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 15:13:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('da294cc0c75b4503a2501b8021544b02','1','ç³»ç»Ÿè®¾ç½®-ä¸šåŠ¡è®¢å•-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:36:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/demo/businessinfo/form','GET','tabPageId=jerichotabiframe_2',''),('da5eb71e9094463f982b10c66c1adffe','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2016-06-22 14:58:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/cms/none','GET','',''),('db39e5aa06934cd6b74e495f85075182','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 14:59:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_3',''),('dc13c135e0404c24a2f22e61d2f6ff4e','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ç”Ÿæˆæ–¹æ¡ˆé…ç½®','1','2016-06-22 15:16:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/gen/genScheme','GET','tabPageId=jerichotabiframe_2',''),('dd1d30420a2f432f81534a2af923c692','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 16:10:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','tabPageId=jerichotabiframe_5',''),('dd58f0cf62ad46f198f16895d0eb520c','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:06:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/form','GET','parent.id=13',''),('dd5f4bbf8d574cda80dda7ccf9f5ea8f','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2016-06-22 14:57:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_8',''),('ddb38bda4b8c43338510c0b86e637d99','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 15:40:55','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_3',''),('de7a71cc91734e1c9ead01e2170b05c9','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2016-06-22 16:11:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/delete','GET','id=c0d3d60f17be4391a52af098a6279ba3',''),('df0f3b0d5a73461db867a239c80591fc','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-æ ‘ç»“æ„','1','2016-06-22 14:45:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/test/testTree','GET','tabPageId=jerichotabiframe_7',''),('e028547b918c42a9944295b556c9c4ac','1','åœ¨çº¿åŠå…¬-ä¸šåŠ¡è®¢å•-ä¸šåŠ¡è®¢å•è¯¦æƒ…','1','2016-06-22 16:33:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/order/businessinfo/form','GET','tabPageId=jerichotabiframe_2',''),('e11cec28629a4d5ab96998e61e7ebc3f','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2016-06-22 16:22:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_1',''),('e195f88962284a419fe9bd6f457b03a0','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:17:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/demo/businessinfo/form','GET','tabPageId=jerichotabiframe_7',''),('e1f1b291c75b4d17b201f098328978c6','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 16:31:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a','GET','login=',''),('e30ded4ed8784cd8bae145b832843de8','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 15:13:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a','GET','login=',''),('e310abbca39247378b1965f72a76da9e','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:39:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('e54ca36adc0242bbbae91df5a7da40f7','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2016-06-22 15:06:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/delete','GET','id=14d06fb4b82d4b32902f2f002ebdbd67',''),('e5ab6518c44b48afa92c9beee36ae5e3','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2016-06-22 16:17:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/save','POST','id=&parent.id=d04beb3092cd4579a223e8fe6b74a71e&parent.name=ä¸šåŠ¡è®¢å•&name=ä¸šåŠ¡è®¢å•è¯¦æƒ…&href=/order/businessinfo/list&target=&icon=&sort=30&isShow=1&permission=order:businessinfo:*&remarks=',''),('e5e5cae2bfbb4f128b0c58709d42e7fe','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-è§’è‰²ç®¡ç†','1','2016-06-22 16:18:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/role/','GET','tabPageId=jerichotabiframe_27',''),('e89418f0d08447d4b2e7ea1a30a44002','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:16:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('e95f505e504a4e6fa276579cff0c3a9a','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-æœºæ„ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 16:22:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/office/list','GET','id=&parentIds=',''),('eb58bc25a96149b284a12bc81499be91','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 14:53:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('edf60993f9944360bbe41426d5ca4604','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2016-06-22 16:15:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('ee0c16611dc84d7db35bac9679beb556','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 15:13:34','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_4',''),('ee1ec1b3c53f4454925bb4b758019d05','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2016-06-22 15:36:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/save','POST','id=c0d3d60f17be4391a52af098a6279ba3&parent.id=fe541070549c45a2b8a57027a563cb83&parent.name=ä¸šåŠ¡è®¢å•&name=ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•&href=/sys/demo/businessinfo/form&target=&icon=&sort=80&isShow=1&permission=sys:demo:businessinfo:*&remarks=',''),('ef3072db0760413b87328e20f2c9d158','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 16:22:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('efa2876ec9174d03ab5bf1ff5c799513','1','åœ¨çº¿åŠå…¬-ä¸šåŠ¡è®¢å•-ä¸šåŠ¡è®¢å•è¯¦æƒ…','1','2016-06-22 16:20:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/order/businessinfo/list','GET','tabPageId=jerichotabiframe_2',''),('efb4300069fe4946b7d780f14475af18','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2016-06-22 16:24:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_1',''),('efbaf328305741c3ab9b5cb02bbf060f','1','ä»£ç ç”Ÿæˆ-ä»£ç ç”Ÿæˆ-ä¸šåŠ¡è¡¨é…ç½®','1','2016-06-22 15:15:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/gen/genTable','GET','tabPageId=jerichotabiframe_1',''),('f0b2e9f6579f4bfa90e18421a118dde6','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2016-06-22 14:56:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/save','POST','id=&parent.id=2&parent.name=ç³»ç»Ÿè®¾ç½®&name=ä¸šåŠ¡ä¿¡æ¯&href=/list&target=&icon=&sort=1020&isShow=1&permission=&remarks=',''),('f32a718b14c54cb79fc814f8fb9c9c1f','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 15:16:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_6',''),('f43f41d13aa441b7bcb56458c6074b1f','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2016-06-22 16:24:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/save','POST','id=7cdd2e5cc9ec4a498bd2c24899720023&parent.id=d04beb3092cd4579a223e8fe6b74a71e&parent.name=ä¸šåŠ¡è®¢å•&name=ä¸šåŠ¡è®¢å•è¯¦æƒ…&href=/order/businessinfo/form&target=&icon=bell&sort=30&isShow=1&permission=order:businessinfo:*&remarks=',''),('f4cab20a43cc4eada2c196bd2fca9d21','1','åœ¨çº¿åŠå…¬-ä¸šåŠ¡è®¢å•-ä¸šåŠ¡è®¢å•è¯¦æƒ…','1','2016-06-22 16:22:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/order/businessinfo/list','GET','tabPageId=jerichotabiframe_2',''),('f5a94ece68084e3ba3846dcc0cd51f8e','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2016-06-22 14:57:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/save','POST','id=14d06fb4b82d4b32902f2f002ebdbd67&parent.id=2&parent.name=ç³»ç»Ÿè®¾ç½®&name=ä¸šåŠ¡ä¿¡æ¯&href=/sys/demo/businessinfo/list&target=&icon=&sort=1020&isShow=1&permission=&remarks=',''),('f6ccf714fc3c49a58e17cee0fdd7e303','1','ç³»ç»Ÿè®¾ç½®-ä¸šåŠ¡è®¢å•-ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•','1','2016-06-22 15:39:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/demo/businessinfo/form','GET','tabPageId=jerichotabiframe_2',''),('f761ecb9aab34cba80b93027da130aa3','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 17:01:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('f889f9cad0774d7888698504ecb26e57','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 15:13:23','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('f88e014e38a1462aa57a29b33d08dd0d','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-ä¿®æ”¹','1','2016-06-22 15:10:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/save','POST','id=c0d3d60f17be4391a52af098a6279ba3&parent.id=13&parent.name=æœºæ„ç”¨æˆ·&name=ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•&href=/sys/demo/businessinfo/list&target=&icon=&sort=80&isShow=1&permission=sys:demo:businessinfo:*&remarks=',''),('f8abf2f6f12f4c5eaef5ca99bc13568d','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 14:55:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/form','GET','parent.id=2',''),('f9e84f27ca4948d589eed1720181d07f','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†-æŸ¥çœ‹','1','2016-06-22 15:08:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=20',''),('f9fd0244ab16427aa5e422b487db0bb5','1','æˆ‘çš„é¢æ¿-ä¸ªäººä¿¡æ¯-ä¸ªäººä¿¡æ¯','1','2016-06-22 15:13:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('fa53f02963e44a0e9e7ffb9eb2da4858','1','å†…å®¹ç®¡ç†-å†…å®¹ç®¡ç†','1','2016-06-22 14:58:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('fab6f82a2c994a519ed5429d25d4732e','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2016-06-22 16:31:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_1',''),('fb5d9342d63d4bbdb342f6c418a2db24','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2016-06-22 14:58:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_26',''),('fcbbc990fcaf4d3e9a67c92ed486d09b','1','ç³»ç»Ÿè®¾ç½®-æœºæ„ç”¨æˆ·-ç”¨æˆ·ç®¡ç†','1','2016-06-22 14:29:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/user/index','GET','tabPageId=jerichotabiframe_2',''),('fce9b761cda34f97b548ab9db2042c00','1','ç³»ç»Ÿç™»å½•','1','2016-06-22 15:37:34','192.168.8.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586','/jeesite/a/sys/role/','GET','tabPageId=jerichotabiframe_15',''),('fecafc8beb8144bd9386daf6c782749e','1','ç³»ç»Ÿè®¾ç½®-ç³»ç»Ÿè®¾ç½®-èœå•ç®¡ç†','1','2016-06-22 15:12:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/sys/menu/','GET','tabPageId=jerichotabiframe_7',''),('fece3c912fd549159a481a75626223ba','1','åœ¨çº¿åŠå…¬-ä¸šåŠ¡è®¢å•-ä¸šåŠ¡è®¢å•è¯¦æƒ…','1','2016-06-22 16:20:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/order/businessinfo/list','GET','tabPageId=jerichotabiframe_2',''),('fee93811da074601834f80b8a66e3206','1','åœ¨çº¿åŠå…¬-é€šçŸ¥é€šå‘Š-æˆ‘çš„é€šå‘Š','1','2016-06-22 16:20:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_1',''),('fef2c3ffdda245f8abc668fc04b05d9b','1','ä»£ç ç”Ÿæˆ-ç”Ÿæˆç¤ºä¾‹-ä¸»å­è¡¨','1','2016-06-22 16:12:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','/jeesite/a/test/testDataMain','GET','tabPageId=jerichotabiframe_5','');

/*Table structure for table `sys_mdict` */

DROP TABLE IF EXISTS `sys_mdict`;

CREATE TABLE `sys_mdict` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `parent_id` varchar(64) NOT NULL COMMENT 'çˆ¶çº§ç¼–å·',
  `parent_ids` varchar(2000) NOT NULL COMMENT 'æ‰€æœ‰çˆ¶çº§ç¼–å·',
  `name` varchar(100) NOT NULL COMMENT 'åç§°',
  `sort` decimal(10,0) NOT NULL COMMENT 'æ’åº',
  `description` varchar(100) DEFAULT NULL COMMENT 'æè¿°',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `sys_mdict_parent_id` (`parent_id`),
  KEY `sys_mdict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='å¤šçº§å­—å…¸è¡¨';

/*Data for the table `sys_mdict` */

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `parent_id` varchar(64) NOT NULL COMMENT 'çˆ¶çº§ç¼–å·',
  `parent_ids` varchar(2000) NOT NULL COMMENT 'æ‰€æœ‰çˆ¶çº§ç¼–å·',
  `name` varchar(100) NOT NULL COMMENT 'åç§°',
  `sort` decimal(10,0) NOT NULL COMMENT 'æ’åº',
  `href` varchar(2000) DEFAULT NULL COMMENT 'é“¾æ¥',
  `target` varchar(20) DEFAULT NULL COMMENT 'ç›®æ ‡',
  `icon` varchar(100) DEFAULT NULL COMMENT 'å›¾æ ‡',
  `is_show` char(1) NOT NULL COMMENT 'æ˜¯å¦åœ¨èœå•ä¸­æ˜¾ç¤º',
  `permission` varchar(200) DEFAULT NULL COMMENT 'æƒé™æ ‡è¯†',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='èœå•è¡¨';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`id`,`parent_id`,`parent_ids`,`name`,`sort`,`href`,`target`,`icon`,`is_show`,`permission`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('0b2ebd4d639e4c2b83c2dd0764522f24','ba8092291b40482db8fe7fc006ea3d76','0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,','ç¼–è¾‘',60,'','','','0','test:testData:edit','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('0ca004d6b1bf4bcab9670a5060d82a55','3c92c17886944d0687e73e286cada573','0,1,79,3c92c17886944d0687e73e286cada573,','æ ‘ç»“æ„',90,'/test/testTree','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('1','0','0,','åŠŸèƒ½èœå•',0,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','3','0,1,2,3,','å­—å…¸ç®¡ç†',60,'/sys/dict/',NULL,'th-list','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','10','0,1,2,3,10,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','sys:dict:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','10','0,1,2,3,10,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','sys:dict:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','2','0,1,2,','æœºæ„ç”¨æˆ·',970,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','13','0,1,2,13,','åŒºåŸŸç®¡ç†',50,'/sys/area/',NULL,'th','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14d06fb4b82d4b32902f2f002ebdbd67','2','0,1,2,','ä¸šåŠ¡ä¿¡æ¯',1020,'/sys/demo/businessinfo/list','','','1','','1','2016-06-22 14:56:46','1','2016-06-22 14:57:13','','1'),('15','14','0,1,2,13,14,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','sys:area:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','14','0,1,2,13,14,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','sys:area:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','13','0,1,2,13,','æœºæ„ç®¡ç†',40,'/sys/office/',NULL,'th-large','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','17','0,1,2,13,17,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','sys:office:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','17','0,1,2,13,17,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','sys:office:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','ç³»ç»Ÿè®¾ç½®',900,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','13','0,1,2,13,','ç”¨æˆ·ç®¡ç†',30,'/sys/user/index',NULL,'user','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','20','0,1,2,13,20,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','sys:user:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','20','0,1,2,13,20,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','sys:user:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','2','0,1,2,','å…³äºå¸®åŠ©',990,NULL,NULL,NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','23','0,1,2,23','å®˜æ–¹é¦–é¡µ',30,'http://jeesite.com','_blank',NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','23','0,1,2,23','é¡¹ç›®æ”¯æŒ',50,'http://jeesite.com/donation.html','_blank',NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('26','23','0,1,2,23','è®ºå›äº¤æµ',80,'http://bbs.jeesite.com','_blank',NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('27','1','0,1,','æˆ‘çš„é¢æ¿',100,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('28','27','0,1,27,','ä¸ªäººä¿¡æ¯',30,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','28','0,1,27,28,','ä¸ªäººä¿¡æ¯',30,'/sys/user/info',NULL,'user','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','2','0,1,2,','ç³»ç»Ÿè®¾ç½®',980,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','28','0,1,27,28,','ä¿®æ”¹å¯†ç ',40,'/sys/user/modifyPwd',NULL,'lock','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','1','0,1,','å†…å®¹ç®¡ç†',500,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','31','0,1,31,','æ ç›®è®¾ç½®',990,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('33','32','0,1,31,32','æ ç›®ç®¡ç†',30,'/cms/category/',NULL,'align-justify','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34','33','0,1,31,32,33,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','cms:category:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('35','33','0,1,31,32,33,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','cms:category:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','32','0,1,31,32','ç«™ç‚¹è®¾ç½®',40,'/cms/site/',NULL,'certificate','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','36','0,1,31,32,36,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','cms:site:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('38','36','0,1,31,32,36,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','cms:site:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('39','32','0,1,31,32','åˆ‡æ¢ç«™ç‚¹',50,'/cms/site/select',NULL,'retweet','1','cms:site:select','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3c92c17886944d0687e73e286cada573','79','0,1,79,','ç”Ÿæˆç¤ºä¾‹',120,'','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('4','3','0,1,2,3,','èœå•ç®¡ç†',30,'/sys/menu/',NULL,'list-alt','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','31','0,1,31,','å†…å®¹ç®¡ç†',500,NULL,NULL,NULL,'1','cms:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('41','40','0,1,31,40,','å†…å®¹å‘å¸ƒ',30,'/cms/',NULL,'briefcase','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('42','41','0,1,31,40,41,','æ–‡ç« æ¨¡å‹',40,'/cms/article/',NULL,'file','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('43','42','0,1,31,40,41,42,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','cms:article:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('44','42','0,1,31,40,41,42,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','cms:article:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('45','42','0,1,31,40,41,42,','å®¡æ ¸',50,NULL,NULL,NULL,'0','cms:article:audit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','41','0,1,31,40,41,','é“¾æ¥æ¨¡å‹',60,'/cms/link/',NULL,'random','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('47','46','0,1,31,40,41,46,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','cms:link:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('48','46','0,1,31,40,41,46,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','cms:link:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4855cf3b25c244fb8500a380db189d97','b1f6d1b86ba24365bae7fd86c5082317','0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,','æŸ¥çœ‹',30,'','','','0','test:testDataMain:view','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('49','46','0,1,31,40,41,46,','å®¡æ ¸',50,NULL,NULL,NULL,'0','cms:link:audit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','4','0,1,2,3,4,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','sys:menu:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','40','0,1,31,40,','è¯„è®ºç®¡ç†',40,'/cms/comment/?status=2',NULL,'comment','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','50','0,1,31,40,50,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','cms:comment:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','50','0,1,31,40,50,','å®¡æ ¸',40,NULL,NULL,NULL,'0','cms:comment:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','40','0,1,31,40,','å…¬å…±ç•™è¨€',80,'/cms/guestbook/?status=2',NULL,'glass','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('54','53','0,1,31,40,53,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','cms:guestbook:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('55','53','0,1,31,40,53,','å®¡æ ¸',40,NULL,NULL,NULL,'0','cms:guestbook:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('56','71','0,1,27,71,','æ–‡ä»¶ç®¡ç†',90,'/../static/ckfinder/ckfinder.html',NULL,'folder-open','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('57','56','0,1,27,40,56,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','cms:ckfinder:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('58','56','0,1,27,40,56,','ä¸Šä¼ ',40,NULL,NULL,NULL,'0','cms:ckfinder:upload','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('59','56','0,1,27,40,56,','ä¿®æ”¹',50,NULL,NULL,NULL,'0','cms:ckfinder:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','4','0,1,2,3,4,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','sys:menu:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('60','31','0,1,31,','ç»Ÿè®¡åˆ†æ',600,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('61','60','0,1,31,60,','ä¿¡æ¯é‡ç»Ÿè®¡',30,'/cms/stats/article',NULL,'tasks','1','cms:stats:article','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('62','1','0,1,','åœ¨çº¿åŠå…¬',200,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('63','62','0,1,62,','ä¸ªäººåŠå…¬',30,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('64','63','0,1,62,63,','è¯·å‡åŠç†',300,'/oa/leave',NULL,'leaf','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('65','64','0,1,62,63,64,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','oa:leave:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('66','64','0,1,62,63,64,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','oa:leave:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('67','2','0,1,2,','æ—¥å¿—æŸ¥è¯¢',985,NULL,NULL,NULL,'1',NULL,'1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('68','67','0,1,2,67,','æ—¥å¿—æŸ¥è¯¢',30,'/sys/log',NULL,'pencil','1','sys:log:view','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('69','62','0,1,62,','æµç¨‹ç®¡ç†',300,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','3','0,1,2,3,','è§’è‰²ç®¡ç†',50,'/sys/role/',NULL,'lock','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('70','69','0,1,62,69,','æµç¨‹ç®¡ç†',50,'/act/process',NULL,'road','1','act:process:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('71','27','0,1,27,','æ–‡ä»¶ç®¡ç†',90,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('72','69','0,1,62,69,','æ¨¡å‹ç®¡ç†',100,'/act/model',NULL,'road','1','act:model:edit','1','2013-09-20 08:00:00','1','2013-09-20 08:00:00',NULL,'0'),('73','63','0,1,62,63,','æˆ‘çš„ä»»åŠ¡',50,'/act/task/todo/',NULL,'tasks','1',NULL,'1','2013-09-24 08:00:00','1','2013-09-24 08:00:00',NULL,'0'),('74','63','0,1,62,63,','å®¡æ‰¹æµ‹è¯•',100,'/oa/testAudit',NULL,NULL,'1','oa:testAudit:view,oa:testAudit:edit','1','2013-09-24 08:00:00','1','2013-09-24 08:00:00',NULL,'0'),('75','1','0,1,','åœ¨çº¿æ¼”ç¤º',3000,NULL,NULL,NULL,'1',NULL,'1','2013-10-08 08:00:00','1','2013-10-08 08:00:00',NULL,'1'),('79','1','0,1,','ä»£ç ç”Ÿæˆ',5000,NULL,NULL,NULL,'1',NULL,'1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('7cdd2e5cc9ec4a498bd2c24899720023','d04beb3092cd4579a223e8fe6b74a71e','0,1,62,d04beb3092cd4579a223e8fe6b74a71e,','ä¸šåŠ¡è®¢å•è¯¦æƒ…',30,'/order/businessinfo/form','','bell','1','order:businessinfo:*','1','2016-06-22 16:17:04','1','2016-06-22 16:24:27','','0'),('8','7','0,1,2,3,7,','æŸ¥çœ‹',30,NULL,NULL,NULL,'0','sys:role:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('80','79','0,1,79,','ä»£ç ç”Ÿæˆ',50,NULL,NULL,NULL,'1',NULL,'1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('81','80','0,1,79,80,','ç”Ÿæˆæ–¹æ¡ˆé…ç½®',30,'/gen/genScheme',NULL,NULL,'1','gen:genScheme:view,gen:genScheme:edit','1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('82','80','0,1,79,80,','ä¸šåŠ¡è¡¨é…ç½®',20,'/gen/genTable',NULL,NULL,'1','gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit','1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('83','80','0,1,79,80,','ä»£ç æ¨¡æ¿ç®¡ç†',90,'/gen/genTemplate',NULL,NULL,'1','gen:genTemplate:view,gen:genTemplate:edit','1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'1'),('84','67','0,1,2,67,','è¿æ¥æ± ç›‘è§†',40,'/../druid',NULL,NULL,'1',NULL,'1','2013-10-18 08:00:00','1','2013-10-18 08:00:00',NULL,'0'),('85','76','0,1,75,76,','è¡Œæ”¿åŒºåŸŸ',80,'/../static/map/map-city.html',NULL,NULL,'1',NULL,'1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'0'),('86','75','0,1,75,','ç»„ä»¶æ¼”ç¤º',50,NULL,NULL,NULL,'1',NULL,'1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'1'),('87','86','0,1,75,86,','ç»„ä»¶æ¼”ç¤º',30,'/test/test/form',NULL,NULL,'1','test:test:view,test:test:edit','1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'1'),('88','62','0,1,62,','é€šçŸ¥é€šå‘Š',20,'','','','1','','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('89','88','0,1,62,88,','æˆ‘çš„é€šå‘Š',30,'/oa/oaNotify/self','','','1','','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('9','7','0,1,2,3,7,','ä¿®æ”¹',40,NULL,NULL,NULL,'0','sys:role:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('90','88','0,1,62,88,','é€šå‘Šç®¡ç†',50,'/oa/oaNotify','','','1','oa:oaNotify:view,oa:oaNotify:edit','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('afab2db430e2457f9cf3a11feaa8b869','0ca004d6b1bf4bcab9670a5060d82a55','0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,','ç¼–è¾‘',60,'','','','0','test:testTree:edit','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('b1f6d1b86ba24365bae7fd86c5082317','3c92c17886944d0687e73e286cada573','0,1,79,3c92c17886944d0687e73e286cada573,','ä¸»å­è¡¨',60,'/test/testDataMain','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('ba8092291b40482db8fe7fc006ea3d76','3c92c17886944d0687e73e286cada573','0,1,79,3c92c17886944d0687e73e286cada573,','å•è¡¨',30,'/test/testData','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('c0d3d60f17be4391a52af098a6279ba3','fe541070549c45a2b8a57027a563cb83','0,1,2,fe541070549c45a2b8a57027a563cb83,','ä¸šåŠ¡ä¿¡æ¯å±•ç¤ºæµ‹è¯•',80,'/sys/demo/businessinfo/form','','','1','sys:demo:businessinfo:*','1','2016-06-22 15:08:07','1','2016-06-22 15:36:13','','1'),('c2e4d9082a0b4386884a0b203afe2c5c','0ca004d6b1bf4bcab9670a5060d82a55','0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,','æŸ¥çœ‹',30,'','','','0','test:testTree:view','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('d04beb3092cd4579a223e8fe6b74a71e','62','0,1,62,','ä¸šåŠ¡è®¢å•',330,'','','','1','','1','2016-06-22 16:16:06','1','2016-06-22 16:16:06','','0'),('d15ec45a4c5449c3bbd7a61d5f9dd1d2','b1f6d1b86ba24365bae7fd86c5082317','0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,','ç¼–è¾‘',60,'','','','0','test:testDataMain:edit','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('df7ce823c5b24ff9bada43d992f373e2','ba8092291b40482db8fe7fc006ea3d76','0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,','æŸ¥çœ‹',30,'','','','0','test:testData:view','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('fe541070549c45a2b8a57027a563cb83','2','0,1,2,','ä¸šåŠ¡è®¢å•',1020,'','','','1','','1','2016-06-22 15:35:45','1','2016-06-22 15:35:45','','1');

/*Table structure for table `sys_office` */

DROP TABLE IF EXISTS `sys_office`;

CREATE TABLE `sys_office` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `parent_id` varchar(64) NOT NULL COMMENT 'çˆ¶çº§ç¼–å·',
  `parent_ids` varchar(2000) NOT NULL COMMENT 'æ‰€æœ‰çˆ¶çº§ç¼–å·',
  `name` varchar(100) NOT NULL COMMENT 'åç§°',
  `sort` decimal(10,0) NOT NULL COMMENT 'æ’åº',
  `area_id` varchar(64) NOT NULL COMMENT 'å½’å±åŒºåŸŸ',
  `code` varchar(100) DEFAULT NULL COMMENT 'åŒºåŸŸç¼–ç ',
  `type` char(1) NOT NULL COMMENT 'æœºæ„ç±»å‹',
  `grade` char(1) NOT NULL COMMENT 'æœºæ„ç­‰çº§',
  `address` varchar(255) DEFAULT NULL COMMENT 'è”ç³»åœ°å€',
  `zip_code` varchar(100) DEFAULT NULL COMMENT 'é‚®æ”¿ç¼–ç ',
  `master` varchar(100) DEFAULT NULL COMMENT 'è´Ÿè´£äºº',
  `phone` varchar(200) DEFAULT NULL COMMENT 'ç”µè¯',
  `fax` varchar(200) DEFAULT NULL COMMENT 'ä¼ çœŸ',
  `email` varchar(200) DEFAULT NULL COMMENT 'é‚®ç®±',
  `USEABLE` varchar(64) DEFAULT NULL COMMENT 'æ˜¯å¦å¯ç”¨',
  `PRIMARY_PERSON` varchar(64) DEFAULT NULL COMMENT 'ä¸»è´Ÿè´£äºº',
  `DEPUTY_PERSON` varchar(64) DEFAULT NULL COMMENT 'å‰¯è´Ÿè´£äºº',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_del_flag` (`del_flag`),
  KEY `sys_office_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æœºæ„è¡¨';

/*Data for the table `sys_office` */

insert  into `sys_office`(`id`,`parent_id`,`parent_ids`,`name`,`sort`,`area_id`,`code`,`type`,`grade`,`address`,`zip_code`,`master`,`phone`,`fax`,`email`,`USEABLE`,`PRIMARY_PERSON`,`DEPUTY_PERSON`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','0','0,','å±±ä¸œçœæ€»å…¬å¸',10,'2','100000','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','7','0,1,7,','å¸‚åœºéƒ¨',30,'3','200003','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','7','0,1,7,','æŠ€æœ¯éƒ¨',40,'3','200004','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','7','0,1,7,','å†åŸåŒºåˆ†å…¬å¸',0,'4','201000','1','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','12','0,1,7,12,','å…¬å¸é¢†å¯¼',10,'4','201001','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','12','0,1,7,12,','ç»¼åˆéƒ¨',20,'4','201002','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','12','0,1,7,12,','å¸‚åœºéƒ¨',30,'4','201003','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','12','0,1,7,12,','æŠ€æœ¯éƒ¨',40,'4','201004','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','7','0,1,7,','å†ä¸‹åŒºåˆ†å…¬å¸',40,'5','201010','1','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','17','0,1,7,17,','å…¬å¸é¢†å¯¼',10,'5','201011','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','17','0,1,7,17,','ç»¼åˆéƒ¨',20,'5','201012','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','å…¬å¸é¢†å¯¼',10,'2','100001','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','17','0,1,7,17,','å¸‚åœºéƒ¨',30,'5','201013','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','17','0,1,7,17,','æŠ€æœ¯éƒ¨',40,'5','201014','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','7','0,1,7,','é«˜æ–°åŒºåˆ†å…¬å¸',50,'6','201010','1','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','22','0,1,7,22,','å…¬å¸é¢†å¯¼',10,'6','201011','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','22','0,1,7,22,','ç»¼åˆéƒ¨',20,'6','201012','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','22','0,1,7,22,','å¸‚åœºéƒ¨',30,'6','201013','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','22','0,1,7,22,','æŠ€æœ¯éƒ¨',40,'6','201014','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','0,1,','ç»¼åˆéƒ¨',20,'2','100002','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','1','0,1,','å¸‚åœºéƒ¨',30,'2','100003','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','1','0,1,','æŠ€æœ¯éƒ¨',40,'2','100004','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','0,1,','ç ”å‘éƒ¨',50,'2','100005','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','1','0,1,','æµå—å¸‚åˆ†å…¬å¸',20,'3','200000','1','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','7','0,1,7,','å…¬å¸é¢†å¯¼',10,'3','200001','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','7','0,1,7,','ç»¼åˆéƒ¨',20,'3','200002','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `office_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±æœºæ„',
  `name` varchar(100) NOT NULL COMMENT 'è§’è‰²åç§°',
  `enname` varchar(255) DEFAULT NULL COMMENT 'è‹±æ–‡åç§°',
  `role_type` varchar(255) DEFAULT NULL COMMENT 'è§’è‰²ç±»å‹',
  `data_scope` char(1) DEFAULT NULL COMMENT 'æ•°æ®èŒƒå›´',
  `is_sys` varchar(64) DEFAULT NULL COMMENT 'æ˜¯å¦ç³»ç»Ÿæ•°æ®',
  `useable` varchar(64) DEFAULT NULL COMMENT 'æ˜¯å¦å¯ç”¨',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='è§’è‰²è¡¨';

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`office_id`,`name`,`enname`,`role_type`,`data_scope`,`is_sys`,`useable`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','2','ç³»ç»Ÿç®¡ç†å‘˜','dept','assignment','1','1','1','1','2013-05-27 08:00:00','1','2016-06-22 16:18:33','','0'),('2','1','å…¬å¸ç®¡ç†å‘˜','hr','assignment','2',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','æœ¬å…¬å¸ç®¡ç†å‘˜','a','assignment','3',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','1','éƒ¨é—¨ç®¡ç†å‘˜','b','assignment','4',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','1','æœ¬éƒ¨é—¨ç®¡ç†å‘˜','c','assignment','5',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','æ™®é€šç”¨æˆ·','d','assignment','8',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','7','æµå—å¸‚ç®¡ç†å‘˜','e','assignment','9',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) NOT NULL COMMENT 'è§’è‰²ç¼–å·',
  `menu_id` varchar(64) NOT NULL COMMENT 'èœå•ç¼–å·',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='è§’è‰²-èœå•';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values ('1','1'),('1','10'),('1','11'),('1','12'),('1','13'),('1','14'),('1','15'),('1','16'),('1','17'),('1','18'),('1','19'),('1','2'),('1','20'),('1','21'),('1','22'),('1','23'),('1','24'),('1','27'),('1','28'),('1','29'),('1','3'),('1','30'),('1','31'),('1','32'),('1','33'),('1','34'),('1','35'),('1','36'),('1','37'),('1','38'),('1','39'),('1','4'),('1','40'),('1','41'),('1','42'),('1','43'),('1','44'),('1','45'),('1','46'),('1','47'),('1','48'),('1','49'),('1','5'),('1','50'),('1','51'),('1','52'),('1','53'),('1','54'),('1','55'),('1','56'),('1','57'),('1','58'),('1','59'),('1','6'),('1','60'),('1','61'),('1','62'),('1','63'),('1','64'),('1','65'),('1','66'),('1','67'),('1','68'),('1','69'),('1','7'),('1','70'),('1','71'),('1','72'),('1','73'),('1','74'),('1','79'),('1','7cdd2e5cc9ec4a498bd2c24899720023'),('1','8'),('1','80'),('1','81'),('1','82'),('1','84'),('1','85'),('1','88'),('1','89'),('1','9'),('1','90'),('1','d04beb3092cd4579a223e8fe6b74a71e'),('2','1'),('2','10'),('2','11'),('2','12'),('2','13'),('2','14'),('2','15'),('2','16'),('2','17'),('2','18'),('2','19'),('2','2'),('2','20'),('2','21'),('2','22'),('2','23'),('2','24'),('2','25'),('2','26'),('2','27'),('2','28'),('2','29'),('2','3'),('2','30'),('2','31'),('2','32'),('2','33'),('2','34'),('2','35'),('2','36'),('2','37'),('2','38'),('2','39'),('2','4'),('2','40'),('2','41'),('2','42'),('2','43'),('2','44'),('2','45'),('2','46'),('2','47'),('2','48'),('2','49'),('2','5'),('2','50'),('2','51'),('2','52'),('2','53'),('2','54'),('2','55'),('2','56'),('2','57'),('2','58'),('2','59'),('2','6'),('2','60'),('2','61'),('2','62'),('2','63'),('2','64'),('2','65'),('2','66'),('2','67'),('2','68'),('2','69'),('2','7'),('2','70'),('2','71'),('2','72'),('2','73'),('2','74'),('2','75'),('2','76'),('2','77'),('2','78'),('2','79'),('2','8'),('2','80'),('2','81'),('2','82'),('2','83'),('2','84'),('2','85'),('2','86'),('2','87'),('2','88'),('2','89'),('2','9'),('2','90'),('3','1'),('3','10'),('3','11'),('3','12'),('3','13'),('3','14'),('3','15'),('3','16'),('3','17'),('3','18'),('3','19'),('3','2'),('3','20'),('3','21'),('3','22'),('3','23'),('3','24'),('3','25'),('3','26'),('3','27'),('3','28'),('3','29'),('3','3'),('3','30'),('3','31'),('3','32'),('3','33'),('3','34'),('3','35'),('3','36'),('3','37'),('3','38'),('3','39'),('3','4'),('3','40'),('3','41'),('3','42'),('3','43'),('3','44'),('3','45'),('3','46'),('3','47'),('3','48'),('3','49'),('3','5'),('3','50'),('3','51'),('3','52'),('3','53'),('3','54'),('3','55'),('3','56'),('3','57'),('3','58'),('3','59'),('3','6'),('3','60'),('3','61'),('3','62'),('3','63'),('3','64'),('3','65'),('3','66'),('3','67'),('3','68'),('3','69'),('3','7'),('3','70'),('3','71'),('3','72'),('3','73'),('3','74'),('3','75'),('3','76'),('3','77'),('3','78'),('3','79'),('3','8'),('3','80'),('3','81'),('3','82'),('3','83'),('3','84'),('3','85'),('3','86'),('3','87'),('3','88'),('3','89'),('3','9'),('3','90');

/*Table structure for table `sys_role_office` */

DROP TABLE IF EXISTS `sys_role_office`;

CREATE TABLE `sys_role_office` (
  `role_id` varchar(64) NOT NULL COMMENT 'è§’è‰²ç¼–å·',
  `office_id` varchar(64) NOT NULL COMMENT 'æœºæ„ç¼–å·',
  PRIMARY KEY (`role_id`,`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='è§’è‰²-æœºæ„';

/*Data for the table `sys_role_office` */

insert  into `sys_role_office`(`role_id`,`office_id`) values ('7','10'),('7','11'),('7','12'),('7','13'),('7','14'),('7','15'),('7','16'),('7','17'),('7','18'),('7','19'),('7','20'),('7','21'),('7','22'),('7','23'),('7','24'),('7','25'),('7','26'),('7','7'),('7','8'),('7','9');

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `company_id` varchar(64) NOT NULL COMMENT 'å½’å±å…¬å¸',
  `office_id` varchar(64) NOT NULL COMMENT 'å½’å±éƒ¨é—¨',
  `login_name` varchar(100) NOT NULL COMMENT 'ç™»å½•å',
  `password` varchar(100) NOT NULL COMMENT 'å¯†ç ',
  `no` varchar(100) DEFAULT NULL COMMENT 'å·¥å·',
  `name` varchar(100) NOT NULL COMMENT 'å§“å',
  `email` varchar(200) DEFAULT NULL COMMENT 'é‚®ç®±',
  `phone` varchar(200) DEFAULT NULL COMMENT 'ç”µè¯',
  `mobile` varchar(200) DEFAULT NULL COMMENT 'æ‰‹æœº',
  `user_type` char(1) DEFAULT NULL COMMENT 'ç”¨æˆ·ç±»å‹',
  `photo` varchar(1000) DEFAULT NULL COMMENT 'ç”¨æˆ·å¤´åƒ',
  `login_ip` varchar(100) DEFAULT NULL COMMENT 'æœ€åç™»é™†IP',
  `login_date` datetime DEFAULT NULL COMMENT 'æœ€åç™»é™†æ—¶é—´',
  `login_flag` varchar(64) DEFAULT NULL COMMENT 'æ˜¯å¦å¯ç™»å½•',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ç”¨æˆ·è¡¨';

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`company_id`,`office_id`,`login_name`,`password`,`no`,`name`,`email`,`phone`,`mobile`,`user_type`,`photo`,`login_ip`,`login_date`,`login_flag`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','1','2','thinkgem','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0001','ç³»ç»Ÿç®¡ç†å‘˜','thinkgem@163.com','8675','8675',NULL,NULL,'0:0:0:0:0:0:0:1','2016-06-22 17:01:33','1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00','æœ€é«˜ç®¡ç†å‘˜','0'),('10','7','11','jn_jsb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0010','æµå—æŠ€æœ¯éƒ¨',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','12','13','lc_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0011','æµå—å†åŸé¢†å¯¼',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','12','18','lx_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0012','æµå—å†ä¸‹é¢†å¯¼',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','22','23','gx_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0013','æµå—é«˜æ–°é¢†å¯¼',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','2','sd_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0002','ç®¡ç†å‘˜',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','3','sd_zhb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0003','ç»¼åˆéƒ¨',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','1','4','sd_scb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0004','å¸‚åœºéƒ¨',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','1','5','sd_jsb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0005','æŠ€æœ¯éƒ¨',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','6','sd_yfb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0006','ç ”å‘éƒ¨',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','7','8','jn_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0007','æµå—é¢†å¯¼',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','7','9','jn_zhb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0008','æµå—ç»¼åˆéƒ¨',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','7','10','jn_scb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0009','æµå—å¸‚åœºéƒ¨',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL COMMENT 'ç”¨æˆ·ç¼–å·',
  `role_id` varchar(64) NOT NULL COMMENT 'è§’è‰²ç¼–å·',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ç”¨æˆ·-è§’è‰²';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values ('1','1'),('1','2'),('10','2'),('11','3'),('12','4'),('13','5'),('14','6'),('2','1'),('3','2'),('4','3'),('5','4'),('6','5'),('7','2'),('7','7'),('8','2'),('9','1');

/*Table structure for table `test_data` */

DROP TABLE IF EXISTS `test_data`;

CREATE TABLE `test_data` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `user_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±ç”¨æˆ·',
  `office_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±éƒ¨é—¨',
  `area_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±åŒºåŸŸ',
  `name` varchar(100) DEFAULT NULL COMMENT 'åç§°',
  `sex` char(1) DEFAULT NULL COMMENT 'æ€§åˆ«',
  `in_date` date DEFAULT NULL COMMENT 'åŠ å…¥æ—¥æœŸ',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `test_data_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ä¸šåŠ¡æ•°æ®è¡¨';

/*Data for the table `test_data` */

/*Table structure for table `test_data_child` */

DROP TABLE IF EXISTS `test_data_child`;

CREATE TABLE `test_data_child` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `test_data_main_id` varchar(64) DEFAULT NULL COMMENT 'ä¸šåŠ¡ä¸»è¡¨ID',
  `name` varchar(100) DEFAULT NULL COMMENT 'åç§°',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `test_data_child_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ä¸šåŠ¡æ•°æ®å­è¡¨';

/*Data for the table `test_data_child` */

/*Table structure for table `test_data_main` */

DROP TABLE IF EXISTS `test_data_main`;

CREATE TABLE `test_data_main` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `user_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±ç”¨æˆ·',
  `office_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±éƒ¨é—¨',
  `area_id` varchar(64) DEFAULT NULL COMMENT 'å½’å±åŒºåŸŸ',
  `name` varchar(100) DEFAULT NULL COMMENT 'åç§°',
  `sex` char(1) DEFAULT NULL COMMENT 'æ€§åˆ«',
  `in_date` date DEFAULT NULL COMMENT 'åŠ å…¥æ—¥æœŸ',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `test_data_main_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ä¸šåŠ¡æ•°æ®è¡¨';

/*Data for the table `test_data_main` */

/*Table structure for table `test_tree` */

DROP TABLE IF EXISTS `test_tree`;

CREATE TABLE `test_tree` (
  `id` varchar(64) NOT NULL COMMENT 'ç¼–å·',
  `parent_id` varchar(64) NOT NULL COMMENT 'çˆ¶çº§ç¼–å·',
  `parent_ids` varchar(2000) NOT NULL COMMENT 'æ‰€æœ‰çˆ¶çº§ç¼–å·',
  `name` varchar(100) NOT NULL COMMENT 'åç§°',
  `sort` decimal(10,0) NOT NULL COMMENT 'æ’åº',
  `create_by` varchar(64) NOT NULL COMMENT 'åˆ›å»ºè€…',
  `create_date` datetime NOT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_by` varchar(64) NOT NULL COMMENT 'æ›´æ–°è€…',
  `update_date` datetime NOT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  `remarks` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨ä¿¡æ¯',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'åˆ é™¤æ ‡è®°',
  PRIMARY KEY (`id`),
  KEY `test_tree_del_flag` (`del_flag`),
  KEY `test_data_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æ ‘ç»“æ„è¡¨';

/*Data for the table `test_tree` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
