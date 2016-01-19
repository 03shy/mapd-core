CREATE TABLE classroom(building text encoding dict, room_number text encoding dict, capacity smallint) WITH (fragment_size=2);
CREATE TABLE department(dept_name text encoding dict, building text encoding dict, budget text encoding dict) WITH (fragment_size=2);
CREATE TABLE course(course_id text encoding dict, title text encoding dict, dept_name text encoding dict, credits smallint) WITH (fragment_size=2);
CREATE TABLE instructor(ID text encoding dict, name text NOT NULL encoding dict, dept_name text encoding dict, salary integer) WITH (fragment_size=2);
CREATE TABLE section(course_id text encoding dict, sec_id text encoding dict, semester text encoding dict, year smallint, building text encoding dict, room_number text encoding dict, time_slot_id text encoding dict) WITH (fragment_size=2);
CREATE TABLE teaches(ID text encoding dict, course_id text encoding dict, sec_id text encoding dict, semester text encoding dict, year smallint) WITH (fragment_size=2);
CREATE TABLE student(ID text encoding dict, name text NOT NULL encoding dict, dept_name text encoding dict, tot_cred smallint) WITH (fragment_size=2);
CREATE TABLE takes(ID text encoding dict, course_id text encoding dict, sec_id text encoding dict, semester text encoding dict, year smallint, grade text encoding dict) WITH (fragment_size=2);
CREATE TABLE advisor(s_ID text encoding dict, i_ID text encoding dict) WITH (fragment_size=2);
CREATE TABLE prereq(course_id text encoding dict, prereq_id text encoding dict) WITH (fragment_size=2);
CREATE TABLE timeslot(time_slot_id text encoding dict, day text encoding dict, start_time time, end_time time) WITH (fragment_size=2);
COPY classroom FROM './classroom.csv';
COPY department FROM './department.csv';
COPY course FROM './course.csv';
COPY instructor FROM './instructor.csv';
COPY section FROM './section.csv';
COPY teaches FROM './teaches.csv';
COPY student FROM './student.csv';
COPY takes FROM './takes.csv';
COPY advisor FROM './advisor.csv';
COPY prereq FROM './prereq.csv';
COPY timeslot FROM './timeslot.csv';