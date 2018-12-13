ALTER TABLE IF EXISTS users RENAME COLUMN eitdigital_user_id TO organization_user_id;

ALTER TABLE IF EXISTS peer_reviews RENAME COLUMN eitdigital_peer_assignments_user_id TO organization_peer_assignments_user_id;

ALTER TABLE IF EXISTS programming_submissions RENAME COLUMN eitdigital_programming_assignments_user_id TO organization_programming_assignments_user_id;

ALTER TABLE IF EXISTS discussion_answers RENAME COLUMN eitdigital_discussions_user_id TO organization_discussions_user_id;

ALTER TABLE IF EXISTS peer_submissions RENAME COLUMN eitdigital_peer_assignments_user_id TO organization_peer_assignments_user_id;

ALTER TABLE IF EXISTS users_courses__certificate_payments RENAME COLUMN eitdigital_user_id TO organization_user_id;

ALTER TABLE IF EXISTS notebook_workspaces RENAME COLUMN eitdigital_user_id TO organization_user_id;

ALTER TABLE IF EXISTS course_grades RENAME COLUMN eitdigital_user_id TO organization_user_id;

ALTER TABLE IF EXISTS course_memberships RENAME COLUMN eitdigital_user_id TO organization_user_id;

ALTER TABLE IF EXISTS feedback_item_comments RENAME COLUMN eitdigital_feedback_user_id TO organization_feedback_user_id;

ALTER TABLE IF EXISTS discussion_question_votes RENAME COLUMN eitdigital_discussions_user_id TO organization_discussions_user_id;

ALTER TABLE IF EXISTS peer_skips RENAME COLUMN eitdigital_peer_assignments_user_id TO organization_peer_assignments_user_id;

ALTER TABLE IF EXISTS feedback_course_comments RENAME COLUMN eitdigital_feedback_user_id TO organization_feedback_user_id;

ALTER TABLE IF EXISTS course_progress RENAME COLUMN eitdigital_user_id TO organization_user_id;

ALTER TABLE IF EXISTS feedback_course_ratings RENAME COLUMN eitdigital_feedback_user_id TO organization_feedback_user_id;

ALTER TABLE IF EXISTS discussion_answer_flags RENAME COLUMN eitdigital_discussions_user_id TO organization_discussions_user_id;

ALTER TABLE IF EXISTS discussion_answer_votes RENAME COLUMN eitdigital_discussions_user_id TO organization_discussions_user_id;

ALTER TABLE IF EXISTS feedback_item_ratings RENAME COLUMN eitdigital_feedback_user_id TO organization_feedback_user_id;

ALTER TABLE IF EXISTS course_branch_grades RENAME COLUMN eitdigital_user_id TO organization_user_id;

ALTER TABLE IF EXISTS discussion_questions RENAME COLUMN eitdigital_discussions_user_id TO organization_discussions_user_id;

ALTER TABLE IF EXISTS ecb_evaluation_requests RENAME COLUMN eitdigital_ecb_user_id TO organization_ecb_user_id;

ALTER TABLE IF EXISTS peer_comments RENAME COLUMN eitdigital_peer_assignments_user_id TO organization_peer_assignments_user_id;

ALTER TABLE IF EXISTS organization_enrollments RENAME COLUMN eitdigital_user_id TO organization_user_id;

ALTER TABLE IF EXISTS course_item_grades RENAME COLUMN eitdigital_user_id TO organization_user_id;

ALTER TABLE IF EXISTS on_demand_session_memberships RENAME COLUMN eitdigital_user_id TO organization_user_id;

ALTER TABLE IF EXISTS assessment_actions RENAME COLUMN eitdigital_assessments_user_id TO organization_assessments_user_id;

ALTER TABLE IF EXISTS course_formative_quiz_grades RENAME COLUMN eitdigital_user_id TO organization_user_id;

ALTER TABLE IF EXISTS discussion_question_followings RENAME COLUMN eitdigital_discussions_user_id TO organization_discussions_user_id;

ALTER TABLE IF EXISTS discussion_question_flags RENAME COLUMN eitdigital_discussions_user_id TO organization_discussions_user_id;

ALTER TABLE IF EXISTS demographics_answers RENAME COLUMN eitdigital_demographics_user_id TO organization_demographics_user_id;

ALTER TABLE IF EXISTS eitdigital_course_user_ids DROP CONSTRAINT IF EXISTS eitdigital_course_user_ids_pkey;
ALTER TABLE IF EXISTS eitdigital_course_user_ids DROP CONSTRAINT IF EXISTS eitdigital_course_user_ids_fkey;

ALTER TABLE IF EXISTS eitdigital_course_user_ids RENAME COLUMN eitdigital_user_id TO organization_user_id;
ALTER TABLE IF EXISTS eitdigital_course_user_ids ADD PRIMARY KEY (organization_user_id);
ALTER TABLE IF EXISTS eitdigital_course_user_ids ADD FOREIGN KEY (organization_user_id) REFERENCES users (organization_user_id);

ALTER TABLE IF EXISTS eitdigital_course_user_ids RENAME TO organization_course_user_ids;