<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Program Informations</title>
<link rel="stylesheet" href="styles/style.css" media="all" />

<%@ include file="header.jsp" %>

</head>
<body>
			<div class="main_wrapper">
			
			
			
			
			<div class="content_wrapper">
			
			<div id="sidebar"><ul id="sidebara">
							<li><a href="viewprofile.jsp">View Profile</a></li>
							<li><a href="edit.jsp">Edit Profile</a></li>
							<li><a href="program.jsp">Programs</a></li>
						
							<li><a href="#">Item1</a></li>
							<li><form action="Logout" method="get"><a name="logout" value="logout" href="Logout?logout=true">Logout</a></form></li>
							</div>
			<div id="content_area">
			<h1>Program Requirements at UAlbany</h1>
			<div id="editform">
			<form action="program.jsp" method="post">
			Select Course:<select name="pginfo">
			<option value="" selected="selected">Select</option>
			<option value="BS">BS</option>
			<option value="BA">BA</option>
			<option value="MS">MS</option>
			<option value="PhD">PhD</option>
			</select>
			<input type="submit" name="pginfosub" value="Submit">
			</form>
			
			<br><br><br><br>
			<%if(request.getParameter("pginfosub")!=null){
				String name = request.getParameter("pginfo");
				if(name.equals("BS")){
					
					%>
<table width="100%" class="requirements">
                      <tbody>
                        
                          <td>Courses</td>
                          <td>Credits</td>
                        </tr>
                        <tr>
                          <td> A BIO 120 &amp; 121, A BIO 201 &amp; 202Z </td>
                          <td> 8 credits</td>
                        </tr>
                        <tr>
                          <td> A BIO 212Y  </td>
                          <td> 4 credits</td>
                        </tr>
                        <tr>
                          <td> A BIO 217</td>
                          <td> 3 credits</td>
                        </tr>
                        <tr>
                          <td> A BIO 365</td>
                          <td> 3 credits</td>
                        </tr>
                        <tr>
                          <td> A BIO 402</td>
                          <td> 3 credits</td>
                        </tr>
                        <tr>
                          <td> Biology major electives</td>
                          <td> 15 credits</td>
                        </tr>
                        <tr>
                          <td> Chemistry</td>
                          <td> 16 credits</td>
                        </tr>
                        <tr>
                          <td> Mathematics</td>
                          <td> 7-8 credits</td>
                        </tr>
                        <tr>
                          <td> Physics</td>
                          <td> 8 credits</td>
                        </tr>
                        <tr class="tr_total">
                          <td><em> Total</em></td>
                          <td> <em>67-68 credits</em> </td>
                        </tr>
                      </tbody>
                    </table>
                    
                    
                    <br><br><br><br>
                    
<p>
                    <strong>Note: Beginning in Fall, 2009, General Biology I and II were restructured</strong>.  ABIO 110 and 111(Z) were longer offered. The Fall lecture/lab  course ABIO 110 [4 cr] was replaced with the lecture ABIO 120 [3  cr] and the lab ABIO 122 [1 cr]; the Spring lecture/lab course A Bio  111(Z) was replaced with the lecture ABIO 121 [3 cr] and the lab  ABIO 123Z [1 cr]. The lecture could be taken without the lab; the lab could  only be taken at the same time as or after the corresponding semester's  lecture. The major requirement for General Biology could be met either  with ABIO 110 and 111(Z), or with ABIO 120, 121, 122, and 123(Z).
                  </p>
                  <p>
                    <strong>Beginning in Fall, 2013, the General Biology Labs were further restructured.</strong> ABio 122 and ABio 123Z were discontinued and replaced with ABio 201 and ABio 202Z. Thus, the General Biology labs are now generally taken the year after the lectures.
                  </p>
                  <strong>[From the 2015-16 Undergraduate Catalogue] </strong>
                  <p>
                    <strong>General Program B.S.: Combined major and minor sequence consisting of a minimum of 66 credits.<br />
                    </strong>Required courses: <br />
                    A BIO 120 &amp; 121, 201 &amp; 202Z, 212Y, 217, 365, 402<br />
                    A PHY 105 or 140, 106 or 145, 108 or 150, 109 or 155<br />
                    A MAT 108 &amp; 111 or A MAT 108 &amp; 112, or A MAT 111 &amp; 113, or A MAT 112 &amp; 113<br />
                    A CHM 120 or 130, 121 or 131, 124, 125, 220, 221, 222, 223 <br />
                    <br />
                    15 additional credits in biology are also required, and must   include at least 3 courses which are partially or exclusively laboratory   courses.
                  </p>
                  <ul>
                    <li>Credits in A BIO 399/399Z and 499/499Z may be used to   fulfill the requirement for 1 laboratory course if the student completes   at least 4 credits over at least 2 semesters. A BIO 399/399Z and   499/499Z may contribute a total of 4 credits towards the major. </li>
                    <li>
                      <div type="circle">
                        Courses that do not yield credit toward the major are so indicated in the individual bulletin descriptions.
                      </div>
                    </li>
                    <li>
                      <div type="circle">
                        Courses in the combined major/minor   sequence must include at least 6 credits at the 300 level and at least 3   credits at the 400 level or above.
                      </div>
                    </li>
                  </ul>
                  <p>
                    Graduate courses are open to qualified seniors with appropriate departmental and instructor consent.
                  </p><% 
					
				}if(name.equals("BA")){
					
					%><h1>Bachelor of Arts in Biological Sciences</h1>



                  <p class="intro"><strong> The B.A., which specifies the major only and requires a separate  minor sequence outside science and mathematics, is designed with the  aims of the liberal or fine arts students in mind </strong> and as such is not intended for the professional biologist or teacher.</p>

                  <p><span><strong>Note: Beginning in Fall, 2009, General Biology I and II were restructured</strong>.  ABIO 110 and 111(Z) were longer offered. The Fall lecture/lab  course ABIO 110 [4 cr] was replaced with the lecture ABIO 120 [3  cr] and the lab ABIO 122 [1 cr]; the Spring lecture/lab course A Bio  111(Z) was replaced with the lecture ABIO 121 [3 cr] and the lab  ABIO 123Z [1 cr]. The lecture could be taken without the lab; the lab could  only be taken at the same time as or after the corresponding semester's  lecture. The major requirement for General Biology could be met either  with ABIO 110 and 111(Z), or with ABIO 120, 121, 122, and 123(Z). <strong>Beginning in Fall, 2013, the General Biology Labs were further restructured.</strong> ABio 122 and ABio 123Z were discontinued and replaced with ABio 201 and ABio 202Z. Thus, the General Biology labs are now generally  taken the year after the lectures.</span></p>

                  <strong>[from 2012-13 Undergraduate Catalogue]</strong>

                  <p><strong>General Program B. A.: Major sequence consisting of a minimum of 36 credits.</strong> <br />

                    Required courses: <br />

                    A BIO 120 &amp; 121, 201 &amp; 202Z, 212Y <br />

                    A CHM 120 or 130, 121 or 131, 124, 125<br />

                  16 additional credits of biology major electives including two   courses which are partially or exclusively laboratory courses:</p>

                  <ul>

                    <li>A BIO 399/399Z and 499/499Z may contribute up to a total of 4 credits of non-laboratory major elective credit. </li>

                    <li>Courses that do not yield credit toward the major are so indicated in the individual bulletin descriptions. </li>

                    <li>Major electives must be selected so that a total of 12 credits at the 300 level or above are included in the major.  </li>

                  </ul>

                  <p>The minor sequence will consist of a minimum of 18 credits.   The student may not have a minor in: atmospheric science, biology,   chemistry, computer science, electronics, geology, mathematics, physics,   or statistics.</p>

<br><br>
Bachelor of Arts in Biology Requirements:<br><table border="1" cellpadding="1" cellspacing="1" height="219" width="394">

                    <tbody>

                      <tr>

                        <td> A BIO 120 &amp; 121, A BIO 201 &amp; 202Z   </td>

                        <td> 8 credits</td>

                      </tr>

                      <tr>

                        <td> A BIO 212Y  </td>

                        <td> 4 credits</td>

                      </tr>

                      <tr>

                        <td> Chemistry</td>

                        <td> 8 credits</td>

                      </tr>

                      <tr>

                        <td> Subtotal</td>

                        <td> 20 credits</td>

                      </tr>

                      <tr>

                        <td> Additional credits in biology</td>

                        <td> 16 credits</td>

                      </tr>

                      <tr>

                        <td> Total</td>

                        <td> 36 credits</td>

                      </tr>

                      <tr>

                        <td> Plus nonscience/math minor</td>

                        <td> 18-24 credits</td>

                      </tr>

                    </tbody>

                  </table>
<% }if(name.equals("MS")){
	
	%><h1>Computer Science Master of Science Degree Program</h1>
    




    

<p><P><A name=MSCS></A><FONT size=2><B>Program Leading to the Master of Science Degree</B> </FONT>
<P><FONT size=2>The Master of Science program provides a solid foundation in computer science theory and practice that gives preparation for a career in computing or for further graduate study and research leading to a doctoral degree. Students should refer to the departmental graduate handbook and to their faculty advisor to plan a program of study according to their interests.</FONT></P>
<P><FONT size=2>The master's degree requires a minimum of 31 credits, of which at least 25 must be taken from the Computer Science Department at the University at Albany, SUNY. The M.S. program, excluding undergraduate deficiency subjects, typically takes two full years. </FONT>
<P><FONT size=2><B>Program of Study and Research -&nbsp;Computer Science M.S.</B>&nbsp;</FONT> 
<P><FONT size=2></FONT>
<OL>
<LI><FONT size=2>A proficiency examination in Discrete Mathematics is given at the beginning of the first semester of graduate study. Students who fail this examination are required to pass a departmentally approved remedial program. </FONT></LI>
<LI><FONT size=2>Computer Science core (13-14 credits):&nbsp;CSI 503 and CSI 518 plus two courses chosen</FONT><FONT size=2>&nbsp;from CSI 500, CSI 508, CSI 509, or CSI 519.&nbsp; A 3.0 average must be attained in these core courses. Full-time students are expected to complete these courses in the first year, or as soon as possible if undergraduate deficiencies are being made up.</FONT><FONT size=2> </FONT></LI>
<LI><FONT size=2>Elective subjects (15 credits): Computer Science courses or courses in other academic departments as approved by the department. Approval of non-departmental electives is based on the individual student's overall academic program and preparation. </FONT></LI>
<LI><FONT size=2>Master's Project,&nbsp;Thesis, or Internship&nbsp;(3 credits): Satisfactory completion of (a) any Master's Project course (CSI 68X). The project includes the design and implementation of a computer program of significant scope, unless this is waived by the project faculty supervisor for a student who has sufficient programming experience. The project must include a written report.; (b)&nbsp;CSI 699, Master's Thesis; or &nbsp;(c) CSI 698, Internship.</FONT></LI></OL>
<P><FONT size=2><STRONG>Program of Study and Research -&nbsp;Computer Science M.S.&nbsp;Leading to Continued Study for the Professional Science Management Advanced Graduate Certificate&nbsp;</STRONG></FONT></P><FONT size=2>&nbsp;&nbsp;&nbsp;&nbsp; 1.&nbsp;&nbsp; A proficiency examination in Discrete Mathematics is given at the beginning of the first <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; semester of graduate study. Students who fail this examination are required to pass a <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; departmentally approved remedial program. <BR>&nbsp;&nbsp;&nbsp;&nbsp; 2.&nbsp;&nbsp; Computer Science core (13-14 credits): CSI 503 and CSI 518 plus two courses<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;chosen&nbsp;from CSI 500, CSI 508, CSI 509, or CSI 519.&nbsp; A 3.0 average must be attained in<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;these&nbsp;core&nbsp;courses. Full-time students are expected to complete these courses in the&nbsp;<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;first&nbsp;year, or as&nbsp;soon as possible if undergraduate deficiencies are being made up. <BR>&nbsp;&nbsp;&nbsp; 3.&nbsp;&nbsp;&nbsp; Elective subjects (15 credits): All coursework must be taken at the 500 level.&nbsp; Computer<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Science courses or courses in other academic&nbsp;departments as approved by the<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;department.&nbsp;&nbsp;Approval of non-departmental electives is&nbsp;based on the individual student's<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;overall academic&nbsp;program and preparation. <BR>&nbsp;&nbsp;&nbsp; 4.&nbsp;&nbsp;&nbsp;&nbsp;Internship (3 credits): CSI 698</FONT> 
<P><FONT size=2><B><BR>Admission to Formal Candidacy for Master's Degree</B> </FONT></P>
<P><FONT size=2>The student is admitted to formal candidacy for the master's degree upon (a) the completion of the&nbsp;core computer science courses with at least a 3.0 average and (b) the removal of all undergraduate deficiencies.&nbsp; The academic status of students who do not achieve candidacy by the third semester of full time study will be reviewed. Failure in the proficiency examination in Discrete Mathematics is considered to be an undergraduate deficiency that must be removed before admission to candidacy. </FONT>
<P><FONT size=2><B>Requirements for Admission</B> </FONT>
<P><FONT size=2>Open to students holding a baccalaureate degree with at least a minor or its equivalent in computer science or mathematics or a combination thereof. Full-time admission is ordinarily valid only for the fall semester. </FONT>
<P><FONT size=2>Students whose preparation in undergraduate mathematics or computer science is deficient are required to take undergraduate courses during the first year of graduate study as specified by the department. </FONT>
<P><FONT size=2>Scores from the aptitude portion of the Graduate Record Examination are required from all applicants. </FONT></P>
<P>&nbsp;</P></p>

	<% }
if(name.equals("PhD")){
	
	%>
	<p><P><A name=PHDCS></A><FONT size=2><B>Program Leading to the Doctor of Philosophy Degree</B> </FONT>
<P><FONT size=2>The purpose of the program is to prepare the student for a career as a productive research scholar in computer science. The program is intended for students with career interests in universities, industrial research and development, or government research agencies. </FONT>
<P><FONT size=2>The program is designed to develop the student's ability to recognize and formulate significant research problems, to express them using appropriate abstract models, to apply theoretical and/or experimental techniques for their solution, and to transmit the results to the scientific community. The program develops a broad understanding of computer science, a deep understanding of the major field of interest, mastery of the research methods appropriate for this major field, and the versatility to enter new fields as they emerge. </FONT>
<P><FONT size=2>The program of study and research requires at least three academic years of full-time study and research or the equivalent over a longer period beyond the baccalaureate and, typically, may involve four years. </FONT>
<P><FONT size=2><B>Requirements for Admission</B> </FONT>
<P><FONT size=2>An applicant must have a bachelor's degree from an accredited college or university. A bachelor's degree in computer science or mathematics is desirable, but not necessary. Deficiencies in computer science or mathematics, as determined by the departmental faculty, must be made up during the first year of graduate study. Applicants are ordinarily admitted in the fall semester but those with unusually good qualifications may be admitted at any time. Applicants are required to submit scores for the verbal, quantitative, and analytic portions of the Graduate Record Examination. The submission of an Advanced Test score in computer science or mathematics is encouraged. </FONT>
<P><FONT size=2><B>Program of Study and Research</B> </FONT>
<P><FONT size=2>(60 credits, minimum) </FONT>
<OL>
<LI><FONT size=2>The course of study for each student is planned with a departmental advisor who considers the student's previous preparation, area of specialization, and professional objectives. The student must complete a minimum of 60 credits of graduate courses (which may include seminars, independent study, and research) and at least one additional year of research leading to an acceptable dissertation. These credits must include: </FONT>
<OL type=a>
<LI><FONT size=2>Core Computer Science (14 credits): CSI 500, CSI 503, CSI 509, and CSI 518. A 3.0 average must be attained in these four courses. Full-time students are expected to complete these courses in the first year, or as soon as possible if undergraduate deficiencies are being made up; </FONT></LI>
<LI><FONT size=2>Computer Science breadth: At least 9 credits from departmentally approved areas of specialization including at least 3 credits from systems, 3 credits from theory, and 3 credits from applications; </FONT></LI>
<LI><FONT size=2>A minor of at least 9 credits in approved courses offered by other departments. The minor may be waived or reduced in scope for students with an advanced degree in a suitable field. </FONT></LI></OL></LI>
<LI><FONT size=2>Each student must complete a programming project of significant scope. This requirement can be satisfied by programming involved in dissertation research, by any project-oriented course numbered CSI 68X, or by programming involved in master's thesis research. </FONT></LI>
<LI><FONT size=2>After completing their first year of study, all doctoral students are expected to participate routinely in research seminars. </FONT></LI></OL>
<P><B><BR><FONT size=2>Dissertation</FONT></B><FONT size=2> </FONT></P>
<P><FONT size=2>The student must submit an acceptable dissertation which represents a significant and original research contribution to computer science. </FONT>
<P><FONT size=2>The student must select a dissertation advisor who is willing to assume primary responsibility for supervising the student's research. The dissertation topic is selected in consultation with the student's dissertation advisor, and then a dissertation committee for the student is formed. The committee will decide on review procedures, such as design reviews or oral presentations, appropriate to the topic. </FONT>
<P><FONT size=2><B>Departmental Examinations</B> </FONT>
<OL>
<LI><FONT size=2>A proficiency examination in Discrete Mathematics is given at the beginning of the first semester of graduate study. Doctoral students who fail this exam are required to pass a departmentally approved remedial program. </FONT></LI>
<LI><FONT size=2>The student must pass a</FONT><FONT size=2>n analytic examination that tests analytic ability and knowledge of formal models relevant to computer science. All full-time doctoral students are required to take&nbsp;the analytic exam by the end of their fourth semester of study.</FONT><FONT size=2> </FONT></LI>
<LI><FONT size=2>The student must pass an oral doctoral qualifying examination in the field of the student's research interest. This examination should be completed before the student begins work on the dissertation, and should be completed no later than the sixth semester of graduate study. </FONT></LI>
<LI><FONT size=2>The final examination is an oral defense of the dissertation. </FONT></LI></OL>
<P><BR><FONT size=2><B>Research Tool Requirement</B> </FONT></P>
<P><FONT size=2>The student must demonstrate proficiency in a research skill appropriate to the student's field of research. Examples of approved research skills include a foreign language (French, German, or Russian), mathematical logic, queueing models, statistics, and electronics. </FONT>
<P><FONT size=2><B>Full Time Study in Residence</B> </FONT>
<P><FONT size=2>Each student in a doctoral program must engage in full-time study beyond the master's degree or equivalent at the University in at least two sessions after admission to the advanced program. This requirement is designed to insure for each doctoral student a sustained period of intensive intellectual growth. For this purpose, a student will enroll in full-time study (12 credits) taken in each of two sessions, or in a regular session and a summer session, not necessarily consecutive, which must be completed satisfactorily, except as indicated here: </FONT>
<OL>
<LI><FONT size=2>Students authorized to register for work on a dissertation may meet this 12 credit per session requirement by satisfactorily completing a minimum of 8 earned course credits and registering for work on the dissertation for load credits that will bring the total to 12 credits for each of two sessions. </FONT></LI>
<LI><FONT size=2>Graduate assistants holding a full assistantship may meet the residency requirement by completing one academic year in such a position, including the satisfactory completion of a minimum of 15 registered credits during the year plus satisfactory completion of assigned duties. </FONT></LI></OL>
<P><B><BR><FONT size=2>Admission to Candidacy</FONT></B><FONT size=2> </FONT></P>
<P><FONT size=2>A student is admitted to candidacy for the degree of Doctor of Philosophy upon the following: </FONT>
<OL>
<LI><FONT size=2>Achievement of a satisfactory record in course and seminar study; </FONT></LI>
<LI><FONT size=2>Satisfactory completion of the research tool requirement; </FONT></LI>
<LI><FONT size=2>Completion of the University residence requirements; </FONT></LI>
<LI><FONT size=2>Satisfactory completion of the qualifying examination. <BR></FONT></LI></OL></p>

	
	<% }
			} %>
			</div>
			</div>
			
			</div>
			
		<%@ include file="footer.jsp" %>
			</div>
</body>
</html>