/* Script for creating tables in a database for included export data. */
DELETE FROM assessment_math_expression_questions;
DELETE FROM demographics_answers;
DELETE FROM discussion_question_flags;
DELETE FROM course_branches;
DELETE FROM assessment_text_exact_match_questions;
DELETE FROM discussion_question_followings;
DELETE FROM assessment_regex_patterns;
DELETE FROM specializations;
DELETE FROM course_formative_quiz_grades;
DELETE FROM assessment_actions;
DELETE FROM demographics_question_types;
DELETE FROM on_demand_session_memberships;
DELETE FROM course_item_grades;
DELETE FROM programming_submission_part_grid_grading_statuses;
DELETE FROM assessments;
DELETE FROM course_items;
DELETE FROM programming_assignment_submission_schema_parts;
DELETE FROM course_item_types;
DELETE FROM programming_submission_parts;
DELETE FROM organization_enrollments;
DELETE FROM assessment_text_exact_match_patterns;
DELETE FROM course_item_passing_states;
DELETE FROM peer_comments;
DELETE FROM notebook_workspace_launchers;
DELETE FROM assessment_checkbox_reflect_questions;
DELETE FROM course_branch_items;
DELETE FROM ecb_evaluation_requests;
DELETE FROM eitdigital_course_user_ids;
DELETE FROM course_branch_item_programming_assignments;
DELETE FROM discussion_questions;
DELETE FROM peer_submission_part_free_responses;
DELETE FROM on_demand_sessions;
DELETE FROM ecb_engines;
DELETE FROM organizations;
DELETE FROM course_branch_grades;
DELETE FROM feedback_item_ratings;
DELETE FROM assessment_question_types;
DELETE FROM assessment_response_options;
DELETE FROM assessment_mcq_questions;
DELETE FROM course_branch_item_peer_assignments;
DELETE FROM programming_submission_part_grid_submissions;
DELETE FROM discussion_answer_votes;
DELETE FROM specializations_courses;
DELETE FROM assessment_single_numeric_patterns;
DELETE FROM course_progress_state_types;
DELETE FROM assessment_regex_pattern_flags;
DELETE FROM course_branch_item_assessments;
DELETE FROM discussion_answer_flags;
DELETE FROM course_branch_lessons;
DELETE FROM discussion_course_forums;
DELETE FROM feedback_course_ratings;
DELETE FROM course_progress;
DELETE FROM peer_assignments;
DELETE FROM assessment_types;
DELETE FROM peer_review_part_choices;
DELETE FROM course_item_programming_assignments;
DELETE FROM courses;
DELETE FROM peer_assignment_review_schema_parts;
DELETE FROM peer_submission_part_scores;
DELETE FROM course_passing_states;
DELETE FROM demographics_choices;
DELETE FROM feedback_course_comments;
DELETE FROM assessment_mcq_reflect_questions;
DELETE FROM programming_submission_part_text_submissions;
DELETE FROM assessment_scope_types;
DELETE FROM assessment_regex_questions;
DELETE FROM assessment_responses;
DELETE FROM demographics_questions;
DELETE FROM peer_skips;
DELETE FROM discussion_question_votes;
DELETE FROM programming_submission_part_evaluations;
DELETE FROM assessment_math_expression_patterns;
DELETE FROM assessment_response_patterns;
DELETE FROM feedback_item_comments;
DELETE FROM users;
DELETE FROM assessment_checkbox_questions;
DELETE FROM course_branch_modules;
DELETE FROM peer_assignment_submission_schema_parts;
DELETE FROM programming_assignments;
DELETE FROM assessment_single_numeric_questions;
DELETE FROM peer_submission_part_urls;
DELETE FROM assessment_pattern_types;
DELETE FROM course_item_peer_assignments;
DELETE FROM course_modules;
DELETE FROM assessment_pattern_flag_types;
DELETE FROM course_memberships;
DELETE FROM course_grades;
DELETE FROM programming_assignment_submission_schema_part_xbkvdx;
DELETE FROM assessment_assessments_questions;
DELETE FROM assessment_options;
DELETE FROM course_lessons;
DELETE FROM assessment_questions;
DELETE FROM course_item_assessments;
DELETE FROM peer_assignment_review_schema_part_options;
DELETE FROM notebook_workspaces;
DELETE FROM users_courses__certificate_payments;
DELETE FROM peer_submissions;
DELETE FROM discussion_answers;
DELETE FROM programming_assignment_submission_schema_part_grid_schemas;
DELETE FROM ecb_evaluators;
DELETE FROM programming_submissions;
DELETE FROM peer_reviews;
DELETE FROM assessment_reflect_questions;
DELETE FROM peer_review_part_free_responses;
CREATE TABLE IF NOT EXISTS peer_review_part_free_responses (
    peer_assignment_id VARCHAR(50)
    ,peer_assignment_review_schema_part_id VARCHAR(255)
    ,peer_review_id VARCHAR(50)
    ,peer_review_part_free_response_text VARCHAR(65535)
);
CREATE TABLE IF NOT EXISTS assessment_reflect_questions (
    assessment_question_id VARCHAR(50)
    ,assessment_question_feedback VARCHAR(20000)
);
CREATE TABLE IF NOT EXISTS peer_reviews (
    peer_review_id VARCHAR(50)
    ,peer_submission_id VARCHAR(50)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,peer_review_created_ts TIMESTAMP
    ,peer_review_first_visible_to_submitter_ts TIMESTAMP
    ,peer_review_marked_helpful_ts TIMESTAMP
    ,peer_review_rated_ts TIMESTAMP
    ,peer_review_rating INT4
    ,peer_review_is_mentor_review BOOL
);
CREATE TABLE IF NOT EXISTS programming_submissions (
    programming_submission_id VARCHAR(50)
    ,programming_assignment_id VARCHAR(50)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,programming_submission_created_ts TIMESTAMP
    ,programming_submission_type VARCHAR(50)
    ,programming_submission_grading_status VARCHAR(50)
    ,programming_submission_score INT4
);
CREATE TABLE IF NOT EXISTS ecb_evaluators (
    course_id VARCHAR(255)
    ,course_item_id VARCHAR(255)
    ,ecb_evaluator_id VARCHAR(267)
    ,ecb_engine_id VARCHAR(255)
    ,ecb_evaluator_harness VARCHAR(65535)
);
CREATE TABLE IF NOT EXISTS programming_assignment_submission_schema_part_grid_schemas (
    programming_assignment_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_grid_gyd0w6 VARCHAR(65535)
    ,programming_assignment_submission_schema_part_grid_lb2xog VARCHAR(50)
    ,programming_assignment_submission_schema_part_grid_49aqrn VARCHAR(65535)
);
CREATE TABLE IF NOT EXISTS discussion_answers (
    discussion_answer_id VARCHAR(50)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(50)
    ,discussion_answer_content VARCHAR(20000)
    ,discussion_question_id VARCHAR(50)
    ,discussion_answer_parent_discussion_answer_id VARCHAR(50)
    ,discussion_answer_created_ts TIMESTAMP
    ,discussion_answer_updated_ts TIMESTAMP
);
CREATE TABLE IF NOT EXISTS peer_submissions (
    peer_submission_id VARCHAR(50)
    ,peer_assignment_id VARCHAR(50)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,peer_submission_created_ts TIMESTAMP
    ,peer_submission_is_draft BOOL
    ,peer_submission_title VARCHAR(65535)
    ,peer_submission_removed_from_public_ts TIMESTAMP
    ,peer_submission_score_available_ts TIMESTAMP
    ,peer_submission_score FLOAT8
    ,peer_submission_is_mentor_graded BOOL
);
CREATE TABLE IF NOT EXISTS users_courses__certificate_payments (
    eitdigital_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(50)
    ,met_payment_condition BOOL
    ,was_payment BOOL
    ,was_finaid_grant BOOL
    ,was_group_sponsored BOOL
);
CREATE TABLE IF NOT EXISTS notebook_workspaces (
    notebook_workspace_id VARCHAR(255)
    ,notebook_workspace_template_base_id TEXT
    ,notebook_workspace_created_ts TIMESTAMP
    ,eitdigital_user_id VARCHAR(50) NOT NULL
);
CREATE TABLE IF NOT EXISTS peer_assignment_review_schema_part_options (
    peer_assignment_id VARCHAR(50)
    ,peer_assignment_review_schema_part_id VARCHAR(255)
    ,peer_assignment_review_schema_part_option_id VARCHAR(50)
    ,peer_assignment_review_schema_part_option_text VARCHAR(65535)
    ,peer_assignment_review_schema_part_option_score FLOAT8
);
CREATE TABLE IF NOT EXISTS course_item_assessments (
    course_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,assessment_id VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS assessment_questions (
    assessment_question_id VARCHAR(50)
    ,assessment_question_base_id VARCHAR(50)
    ,assessment_question_version INT4
    ,assessment_question_type_id INT4
    ,assessment_question_prompt VARCHAR(20000)
    ,assessment_question_update_ts TIMESTAMP
);
CREATE TABLE IF NOT EXISTS course_lessons (
    course_id VARCHAR(50)
    ,course_lesson_id VARCHAR(50)
    ,course_module_id VARCHAR(50)
    ,course_lesson_order INT4
    ,course_lesson_name VARCHAR(10000)
);
CREATE TABLE IF NOT EXISTS assessment_options (
    assessment_question_id VARCHAR(50)
    ,assessment_option_id VARCHAR(50)
    ,assessment_option_display VARCHAR(20000)
    ,assessment_option_feedback VARCHAR(20000)
    ,assessment_option_correct BOOL
    ,assessment_option_index INT4
);
CREATE TABLE IF NOT EXISTS assessment_assessments_questions (
    assessment_id VARCHAR(50)
    ,assessment_question_id VARCHAR(50)
    ,assessment_question_internal_id VARCHAR(50)
    ,assessment_question_cuepoint INT4
    ,assessment_question_order INT4
    ,assessment_question_weight INT4
);
CREATE TABLE IF NOT EXISTS programming_assignment_submission_schema_part_xbkvdx (
    programming_assignment_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_m934n INT4
    ,programming_assignment_submission_schema_part_d4407a BOOL
    ,programming_assignment_submission_schema_part_mrj41 VARCHAR(65535)
    ,programming_assignment_submission_schema_part_2fyxz4 VARCHAR(65535)
);
CREATE TABLE IF NOT EXISTS course_grades (
    course_id VARCHAR(50)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,course_grade_ts TIMESTAMP
    ,course_passing_state_id INT4
    ,course_grade_overall_passed_items INT4
    ,course_grade_overall FLOAT4
    ,course_grade_verified_passed_items INT4
    ,course_grade_verified FLOAT4
);
CREATE TABLE IF NOT EXISTS course_memberships (
    eitdigital_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(50)
    ,course_membership_role VARCHAR(50)
    ,course_membership_ts TIMESTAMP
);
CREATE TABLE IF NOT EXISTS assessment_pattern_flag_types (
    assessment_pattern_flag_type_id INT4
    ,assessment_pattern_flag_type_desc VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS course_modules (
    course_id VARCHAR(50)
    ,course_module_id VARCHAR(50)
    ,course_module_order INT4
    ,course_module_name VARCHAR(2000)
    ,course_module_desc VARCHAR(10000)
);
CREATE TABLE IF NOT EXISTS course_item_peer_assignments (
    course_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,peer_assignment_id VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS assessment_pattern_types (
    assessment_pattern_type_id INT4
    ,assessment_pattern_type_desc VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS peer_submission_part_urls (
    peer_assignment_id VARCHAR(50)
    ,peer_assignment_submission_schema_part_id VARCHAR(50)
    ,peer_submission_id VARCHAR(50)
    ,peer_submission_part_url_url VARCHAR(65535)
    ,peer_submission_part_url_title VARCHAR(65535)
    ,peer_submission_part_url_description VARCHAR(65535)
);
CREATE TABLE IF NOT EXISTS assessment_single_numeric_questions (
    assessment_question_id VARCHAR(50)
    ,default_incorrect_feedback VARCHAR(20000)
);
CREATE TABLE IF NOT EXISTS programming_assignments (
    programming_assignment_id VARCHAR(50)
    ,programming_assignment_base_id VARCHAR(50)
    ,programming_assignment_type VARCHAR(50)
    ,programming_assignment_submission_type VARCHAR(50)
    ,programming_assignment_instruction_text VARCHAR(65535)
    ,programming_assignment_passing_fraction FLOAT8
    ,programming_assignment_submission_builder_schema_type VARCHAR(50)
    ,programming_assignment_submission_builder_schema VARCHAR(65535)
    ,programming_assignment_update_ts TIMESTAMP
);
CREATE TABLE IF NOT EXISTS peer_assignment_submission_schema_parts (
    peer_assignment_id VARCHAR(50)
    ,peer_assignment_submission_schema_part_id VARCHAR(255)
    ,peer_assignment_submission_schema_part_type VARCHAR(50)
    ,peer_assignment_submission_schema_part_order INT4
    ,peer_assignment_submission_schema_part_prompt VARCHAR(65535)
);
CREATE TABLE IF NOT EXISTS course_branch_modules (
    course_branch_id VARCHAR(50)
    ,course_module_id VARCHAR(50)
    ,course_branch_module_order INT4
    ,course_branch_module_name VARCHAR(2000)
    ,course_branch_module_desc VARCHAR(10000)
);
CREATE TABLE IF NOT EXISTS assessment_checkbox_questions (
    assessment_question_id VARCHAR(50)
    ,assessment_question_shuffle_options BOOL
    ,assessment_question_allow_partial_scoring BOOL
);
CREATE TABLE IF NOT EXISTS users (
    eitdigital_user_id VARCHAR(50) UNIQUE NOT NULL
    ,user_join_ts TIMESTAMP
    ,country_cd VARCHAR(2)
    ,region_cd VARCHAR(3)
    ,profile_language_cd VARCHAR(8)
    ,browser_language_cd VARCHAR(8)
    ,reported_or_inferred_gender VARCHAR(50)
    ,employment_status VARCHAR(100)
    ,educational_attainment VARCHAR(100)
    ,student_status VARCHAR(100)
);
CREATE TABLE IF NOT EXISTS feedback_item_comments (
    course_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,feedback_unit_id VARCHAR(50)
    ,feedback_unit_type VARCHAR(50)
    ,feedback_system VARCHAR(100)
    ,detailed_context VARCHAR(200)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,feedback_category VARCHAR(50)
    ,feedback_text VARCHAR(20000)
    ,feedback_ts TIMESTAMP
    ,feedback_active BOOL
);
CREATE TABLE IF NOT EXISTS assessment_response_patterns (
    assessment_response_id VARCHAR(50)
    ,assessment_pattern_id VARCHAR(50)
    ,assessment_response_answer VARCHAR(10000)
    ,assessment_response_correct BOOL
    ,assessment_response_feedback VARCHAR(10000)
);
CREATE TABLE IF NOT EXISTS assessment_math_expression_patterns (
    assessment_question_id VARCHAR(50)
    ,assessment_pattern_id VARCHAR(50)
    ,assessment_pattern_display VARCHAR(20000)
    ,assessment_pattern_feedback VARCHAR(20000)
    ,assessment_pattern_correct BOOL
);
CREATE TABLE IF NOT EXISTS programming_submission_part_evaluations (
    programming_assignment_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_id VARCHAR(50)
    ,programming_submission_id VARCHAR(50)
    ,programming_submission_part_score INT4
    ,programming_submission_part_grading_ts TIMESTAMP
    ,programming_submission_part_feedback VARCHAR(65535)
);
CREATE TABLE IF NOT EXISTS discussion_question_votes (
    eitdigital_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(50)
    ,discussion_question_id VARCHAR(50)
    ,discussion_question_vote_value INT4
    ,discussion_question_vote_ts TIMESTAMP
);
CREATE TABLE IF NOT EXISTS peer_skips (
    peer_skip_id VARCHAR(50)
    ,peer_submission_id VARCHAR(50)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,peer_skip_created_ts TIMESTAMP
    ,peer_skip_type VARCHAR(50)
    ,peer_skip_text VARCHAR(65535)
);
CREATE TABLE IF NOT EXISTS demographics_questions (
    question_id INT4
    ,question_type_id INT4
    ,question_desc VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS assessment_responses (
    assessment_response_id VARCHAR(50)
    ,assessment_id VARCHAR(50)
    ,assessment_action_id VARCHAR(50)
    ,assessment_action_version INT4
    ,assessment_question_id VARCHAR(50)
    ,assessment_response_score FLOAT4
    ,assessment_response_weighted_score FLOAT4
);
CREATE TABLE IF NOT EXISTS assessment_regex_questions (
    assessment_question_id VARCHAR(50)
    ,default_incorrect_feedback VARCHAR(20000)
);
CREATE TABLE IF NOT EXISTS assessment_scope_types (
    assessment_scope_type_id INT4
    ,assessment_scope_type_desc VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS programming_submission_part_text_submissions (
    programming_assignment_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_id VARCHAR(50)
    ,programming_submission_id VARCHAR(50)
    ,programming_submission_part_text_submission_answer VARCHAR(32767)
);
CREATE TABLE IF NOT EXISTS assessment_mcq_reflect_questions (
    assessment_question_id VARCHAR(50)
    ,assessment_question_shuffle_options BOOL
);
CREATE TABLE IF NOT EXISTS feedback_course_comments (
    course_id VARCHAR(50)
    ,feedback_system VARCHAR(100)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,feedback_category VARCHAR(50)
    ,feedback_text VARCHAR(20000)
    ,feedback_ts TIMESTAMP
);
CREATE TABLE IF NOT EXISTS demographics_choices (
    question_id INT4
    ,choice_id INT4
    ,choice_desc VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS course_passing_states (
    course_passing_state_id INT4
    ,course_passing_state_desc VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS peer_submission_part_scores (
    peer_assignment_id VARCHAR(50)
    ,peer_assignment_review_schema_part_id VARCHAR(255)
    ,peer_submission_id VARCHAR(50)
    ,peer_submission_part_score FLOAT8
);
CREATE TABLE IF NOT EXISTS peer_assignment_review_schema_parts (
    peer_assignment_id VARCHAR(50)
    ,peer_assignment_review_schema_part_id VARCHAR(255)
    ,peer_assignment_review_schema_part_type VARCHAR(50)
    ,peer_assignment_review_schema_part_order INT4
    ,peer_assignment_review_schema_part_prompt VARCHAR(65535)
    ,peer_assignment_review_schema_part_maximum_score FLOAT8
);
CREATE TABLE IF NOT EXISTS courses (
    course_id VARCHAR(50)
    ,course_slug VARCHAR(2000)
    ,course_name VARCHAR(2000)
    ,course_launch_ts TIMESTAMP
    ,course_update_ts TIMESTAMP
    ,course_deleted BOOL
    ,course_graded BOOL
    ,course_desc VARCHAR(10000)
    ,course_restricted BOOL
    ,course_verification_enabled_at_ts TIMESTAMP
    ,primary_translation_equivalent_course_id VARCHAR(50)
    ,course_preenrollment_ts TIMESTAMP
    ,course_workload VARCHAR(100)
    ,course_session_enabled_ts TIMESTAMP
    ,course_promo_photo_s3_bucket VARCHAR(255)
    ,course_promo_photo_s3_key VARCHAR(10000)
    ,course_level VARCHAR(50)
    ,course_planned_launch_date_text VARCHAR(255)
    ,course_header_image_s3_bucket VARCHAR(255)
    ,course_header_image_s3_key VARCHAR(10000)
);
CREATE TABLE IF NOT EXISTS course_item_programming_assignments (
    course_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,programming_assignment_id VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS peer_review_part_choices (
    peer_assignment_id VARCHAR(50)
    ,peer_assignment_review_schema_part_id VARCHAR(255)
    ,peer_assignment_review_schema_part_option_id VARCHAR(50)
    ,peer_review_id VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS assessment_types (
    assessment_type_id INT4
    ,assessment_type_desc VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS peer_assignments (
    peer_assignment_id VARCHAR(50)
    ,peer_assignment_base_id VARCHAR(50)
    ,peer_assignment_type VARCHAR(50)
    ,peer_assignment_required_review_count INT4
    ,peer_assignment_passing_fraction FLOAT8
    ,peer_assignment_required_reviewer_count_for_score INT4
    ,peer_assignment_required_wait_for_score_ms INT8
    ,peer_assignment_maximum_score FLOAT8
    ,peer_assignment_update_ts TIMESTAMP
    ,peer_assignment_is_mentor_graded BOOL
);
CREATE TABLE IF NOT EXISTS course_progress (
    course_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,course_progress_state_type_id INT4
    ,course_progress_ts TIMESTAMP
);
CREATE TABLE IF NOT EXISTS feedback_course_ratings (
    course_id VARCHAR(50)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,feedback_system VARCHAR(100)
    ,feedback_rating INT4
    ,feedback_max_rating INT4
    ,feedback_ts TIMESTAMP
);
CREATE TABLE IF NOT EXISTS discussion_course_forums (
    discussion_forum_id VARCHAR(50)
    ,course_branch_id VARCHAR(50)
    ,discussion_course_forum_title VARCHAR(20000)
    ,discussion_course_forum_description VARCHAR(20000)
    ,discussion_course_forum_order INT4
);
CREATE TABLE IF NOT EXISTS course_branch_lessons (
    course_branch_id VARCHAR(50)
    ,course_lesson_id VARCHAR(50)
    ,course_module_id VARCHAR(50)
    ,course_branch_lesson_order INT4
    ,course_branch_lesson_name VARCHAR(10000)
);
CREATE TABLE IF NOT EXISTS discussion_answer_flags (
    eitdigital_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(50)
    ,discussion_answer_id VARCHAR(50)
    ,discussion_answer_flag_active BOOL
    ,discussion_answer_flag_ts TIMESTAMP
);
CREATE TABLE IF NOT EXISTS course_branch_item_assessments (
    course_branch_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,assessment_id VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS assessment_regex_pattern_flags (
    assessment_pattern_id VARCHAR(50)
    ,assessment_pattern_flag_type_id INT4
);
CREATE TABLE IF NOT EXISTS course_progress_state_types (
    course_progress_state_type_id INT4
    ,course_progress_state_type_desc VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS assessment_single_numeric_patterns (
    assessment_question_id VARCHAR(50)
    ,assessment_pattern_id VARCHAR(50)
    ,assessment_pattern_type_id INT4
    ,assessment_pattern_value FLOAT8
    ,assessment_pattern_max FLOAT8
    ,assessment_pattern_min FLOAT8
    ,assessment_pattern_include_min BOOL
    ,assessment_pattern_include_max BOOL
    ,assessment_pattern_feedback VARCHAR(20000)
    ,assessment_pattern_correct BOOL
);
CREATE TABLE IF NOT EXISTS specializations_courses (
    specialization_id VARCHAR(50)
    ,course_id VARCHAR(255)
    ,current_dt DATE
);
CREATE TABLE IF NOT EXISTS discussion_answer_votes (
    eitdigital_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(50)
    ,discussion_answer_id VARCHAR(50)
    ,discussion_answer_vote_value INT4
    ,discussion_answer_vote_ts TIMESTAMP
);
CREATE TABLE IF NOT EXISTS programming_submission_part_grid_submissions (
    programming_assignment_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_id VARCHAR(50)
    ,programming_submission_id VARCHAR(50)
    ,programming_submission_part_grid_submission_url VARCHAR(65535)
    ,programming_submission_part_grid_submission_custom_cykkte VARCHAR(65535)
);
CREATE TABLE IF NOT EXISTS course_branch_item_peer_assignments (
    course_branch_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,peer_assignment_id VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS assessment_mcq_questions (
    assessment_question_id VARCHAR(50)
    ,assessment_question_shuffle_options BOOL
);
CREATE TABLE IF NOT EXISTS assessment_response_options (
    assessment_response_id VARCHAR(50)
    ,assessment_option_id VARCHAR(50)
    ,assessment_response_correct BOOL
    ,assessment_response_feedback VARCHAR(20000)
    ,assessment_response_selected BOOL
);
CREATE TABLE IF NOT EXISTS assessment_question_types (
    assessment_question_type_id INT4
    ,assessment_question_type_desc VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS feedback_item_ratings (
    course_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,feedback_unit_id VARCHAR(50)
    ,feedback_unit_type VARCHAR(50)
    ,feedback_system VARCHAR(100)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,feedback_rating INT4
    ,feedback_max_rating INT4
    ,detailed_context VARCHAR(200)
    ,feedback_ts TIMESTAMP
);
CREATE TABLE IF NOT EXISTS course_branch_grades (
    course_branch_id VARCHAR(50)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,course_branch_grade_ts TIMESTAMP
    ,course_passing_state_id INT4
    ,course_branch_grade_overall_passed_items INT4
    ,course_branch_grade_overall FLOAT4
    ,course_branch_grade_verified_passed_items INT4
    ,course_branch_grade_verified FLOAT4
);
CREATE TABLE IF NOT EXISTS organizations (
    university_id INT4
    ,organization_id VARCHAR(50)
    ,organization_name VARCHAR(2000)
    ,organization_country_name VARCHAR(512)
    ,organization_industry VARCHAR(512)
);
CREATE TABLE IF NOT EXISTS ecb_engines (
    ecb_engine_id VARCHAR(267)
    ,ecb_engine_name VARCHAR(1024)
    ,ecb_engine_updated_ts TIMESTAMP
    ,ecb_engine_memory_limit_mb INT4
    ,ecb_engine_timeout_ms INT8
    ,ecb_engine_disk_limit_mb INT4
    ,ecb_engine_cpu_limit INT4
);
CREATE TABLE IF NOT EXISTS on_demand_sessions (
    course_id VARCHAR(50)
    ,on_demand_session_id VARCHAR(50)
    ,on_demand_sessions_start_ts TIMESTAMP
    ,on_demand_sessions_end_ts TIMESTAMP
    ,on_demand_sessions_enrollment_end_ts TIMESTAMP
    ,course_branch_id VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS peer_submission_part_free_responses (
    peer_assignment_id VARCHAR(50)
    ,peer_assignment_submission_schema_part_id VARCHAR(50)
    ,peer_submission_id VARCHAR(50)
    ,peer_submission_part_free_response_text VARCHAR(32767)
);
CREATE TABLE IF NOT EXISTS discussion_questions (
    discussion_question_id VARCHAR(50)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,discussion_question_title VARCHAR(20000)
    ,discussion_question_details VARCHAR(20000)
    ,discussion_question_context_type VARCHAR(50)
    ,course_id VARCHAR(50)
    ,course_module_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,discussion_forum_id VARCHAR(50)
    ,country_cd VARCHAR(2)
    ,group_id VARCHAR(50)
    ,discussion_question_created_ts TIMESTAMP
    ,discussion_question_updated_ts TIMESTAMP
);
CREATE TABLE IF NOT EXISTS course_branch_item_programming_assignments (
    course_branch_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,programming_assignment_id VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS eitdigital_course_user_ids (
    eitdigital_user_id VARCHAR(50) NOT NULL
    ,iot_architecture_user_id VARCHAR(50) NOT NULL
    ,quantitative_model_checking_user_id VARCHAR(50) NOT NULL
    ,testeit_user_id VARCHAR(50) NOT NULL
    ,web_data_user_id VARCHAR(50) NOT NULL
    ,blockchain_professionals_user_id VARCHAR(50) NOT NULL
    ,data_science_geometric_algorithms_user_id VARCHAR(50) NOT NULL
    ,mining_medical_data_user_id VARCHAR(50) NOT NULL
    ,automata_system_validation_user_id VARCHAR(50) NOT NULL
    ,git_github_user_id VARCHAR(50) NOT NULL
    ,system_validation_modal_formulas_user_id VARCHAR(50) NOT NULL
    ,computer_architecture_fundamentals_user_id VARCHAR(50) NOT NULL
    ,iot_connectivity_security_user_id VARCHAR(50) NOT NULL
    ,iot_devices_user_id VARCHAR(50) NOT NULL
    ,automated_reasoning_sat_user_id VARCHAR(50) NOT NULL
    ,embedded_systems_security_first_course_1_user_id VARCHAR(50) NOT NULL
    ,formal_methods_embedded_systems_first_course_1_user_id VARCHAR(50) NOT NULL
    ,embedded_operating_system_user_id VARCHAR(50) NOT NULL
    ,capstone_recommender_systems_user_id VARCHAR(50) NOT NULL
    ,marketing_strategy_entrepreneurs_user_id VARCHAR(50) NOT NULL
    ,programming_java_introduction_user_id VARCHAR(50) NOT NULL
    ,autonomous_runway_detection_user_id VARCHAR(50) NOT NULL
    ,automated_reasoning_first_course_1_user_id VARCHAR(50) NOT NULL
    ,system_validation_software_protocols_user_id VARCHAR(50) NOT NULL
    ,design_embedded_controller_user_id VARCHAR(50) NOT NULL
    ,saforiot_deleted_user_id VARCHAR(50) NOT NULL
    ,system_validation_behavior_user_id VARCHAR(50) NOT NULL
    ,binary_decision_diagrams_automated_reasoning_user_id VARCHAR(50) NOT NULL
    ,real_time_systems_user_id VARCHAR(50) NOT NULL
    ,capstone_formal_methods_user_id VARCHAR(50) NOT NULL
    ,parallel_processing_user_id VARCHAR(50) NOT NULL
    ,high_performance_embedded_architecture_memory_design_user_id VARCHAR(50) NOT NULL
    ,iot_architeting_smart_devices_first_course_1_user_id VARCHAR(50) NOT NULL
    ,mining_data_first_course_1_user_id VARCHAR(50) NOT NULL
    ,digital_twins_user_id VARCHAR(50) NOT NULL
    ,io_efficient_algorithms_user_id VARCHAR(50) NOT NULL
    ,quantitative_formal_modelling_first_course_1_user_id VARCHAR(50) NOT NULL
    ,capstone_value_creation_innovation_user_id VARCHAR(50) NOT NULL
    ,standardisation_user_id VARCHAR(50) NOT NULL
    ,develop_smart_iot_devices_user_id VARCHAR(50) NOT NULL
    ,advanced_recommender_systems_user_id VARCHAR(50) NOT NULL
    ,impact_of_technology_user_id VARCHAR(50) NOT NULL
    ,open_innovation_entrepreneurship_user_id VARCHAR(50) NOT NULL
    ,embedded_computer_architecture_capstone_user_id VARCHAR(50) NOT NULL
    ,multicore_architectures_user_id VARCHAR(50) NOT NULL
    ,quantitative_formal_modeling_1_user_id VARCHAR(50) NOT NULL
    ,basic_recommender_systems_user_id VARCHAR(50) NOT NULL
    ,design_thinking_entrepreneurship_user_id VARCHAR(50) NOT NULL
    ,iot_software_architecture_user_id VARCHAR(50) NOT NULL
    ,privacy_user_id VARCHAR(50) NOT NULL
    ,data_mining_user_id VARCHAR(50) NOT NULL
    ,approximation_algorithms_user_id VARCHAR(50) NOT NULL
    ,PRIMARY KEY (eitdigital_user_id)
    ,FOREIGN KEY (eitdigital_user_id) REFERENCES users(eitdigital_user_id)
);
CREATE TABLE IF NOT EXISTS ecb_evaluation_requests (
    course_id VARCHAR(255)
    ,course_item_id VARCHAR(255)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,ecb_evaluator_id VARCHAR(267)
    ,ecb_evaluation_requested_ts TIMESTAMP
    ,ecb_evaluation_duration_ms INT8
    ,ecb_evaluation_expression VARCHAR(65535)
    ,ecb_evaluation_result VARCHAR(65535)
    ,ecb_evaluation_errors VARCHAR(65535)
);
CREATE TABLE IF NOT EXISTS course_branch_items (
    course_branch_id VARCHAR(255)
    ,course_item_id VARCHAR(255)
    ,course_lesson_id VARCHAR(255)
    ,course_branch_item_order INT4
    ,course_item_type_id INT4
    ,course_branch_item_name VARCHAR(255)
    ,course_branch_item_optional BOOL
    ,atom_id VARCHAR(255)
    ,atom_version_id INT4
    ,course_branch_atom_is_frozen BOOL
);
CREATE TABLE IF NOT EXISTS assessment_checkbox_reflect_questions (
    assessment_question_id VARCHAR(50)
    ,assessment_question_shuffle_options BOOL
);
CREATE TABLE IF NOT EXISTS notebook_workspace_launchers (
    course_id VARCHAR(50)
    ,course_branch_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,notebook_workspace_launcher_id VARCHAR(255)
    ,notebook_workspace_launch_path VARCHAR(255)
    ,notebook_workspace_template_base_id VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS peer_comments (
    peer_comment_id VARCHAR(50)
    ,peer_submission_id VARCHAR(50)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,peer_comment_created_ts TIMESTAMP
    ,peer_comment_text VARCHAR(65535)
);
CREATE TABLE IF NOT EXISTS course_item_passing_states (
    course_item_passing_state_id INT4
    ,course_item_passing_state_desc VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS assessment_text_exact_match_patterns (
    assessment_question_id VARCHAR(50)
    ,assessment_pattern_id VARCHAR(50)
    ,assessment_pattern_display VARCHAR(20000)
    ,assessment_pattern_feedback VARCHAR(20000)
    ,assessment_pattern_correct BOOL
);
CREATE TABLE IF NOT EXISTS organization_enrollments (
    university_id INT4
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(50)
    ,organization_id VARCHAR(50)
    ,organization_enrollment_ts TIMESTAMP
    ,organization_unenrollment_ts TIMESTAMP
    ,organization_completion_ts TIMESTAMP
);
CREATE TABLE IF NOT EXISTS programming_submission_parts (
    programming_assignment_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_id VARCHAR(50)
    ,programming_submission_id VARCHAR(50)
    ,programming_submission_part_type VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS course_item_types (
    course_item_type_id INT4
    ,course_item_type_desc VARCHAR(255)
    ,course_item_type_category VARCHAR(255)
    ,course_item_type_graded BOOL
    ,atom_content_type_id INT4
);
CREATE TABLE IF NOT EXISTS programming_assignment_submission_schema_parts (
    programming_assignment_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_title VARCHAR(65535)
    ,programming_assignment_submission_schema_part_type VARCHAR(50)
    ,programming_assignment_submission_schema_part_order INT4
    ,programming_assignment_submission_schema_part_max_score INT4
    ,programming_assignment_submission_schema_part_is_optional BOOL
    ,programming_assignment_submission_schema_part_xacgt8 INT4
    ,programming_assignment_submission_schema_default_g663i6 VARCHAR(65535)
);
CREATE TABLE IF NOT EXISTS course_items (
    course_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,course_lesson_id VARCHAR(50)
    ,course_item_order INT4
    ,course_item_type_id INT4
    ,course_item_name VARCHAR(10000)
    ,course_item_optional BOOL
);
CREATE TABLE IF NOT EXISTS assessments (
    assessment_id VARCHAR(50)
    ,assessment_base_id VARCHAR(50)
    ,assessment_version INT4
    ,assessment_type_id INT4
    ,assessment_update_ts TIMESTAMP
    ,assessment_passing_fraction FLOAT4
);
CREATE TABLE IF NOT EXISTS programming_submission_part_grid_grading_statuses (
    programming_assignment_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_id VARCHAR(50)
    ,programming_submission_id VARCHAR(50)
    ,programming_submission_part_grid_grading_status_pgrtf5 VARCHAR(50)
    ,programming_submission_part_grid_grading_status_x21exo TIMESTAMP
    ,programming_submission_part_grid_grading_status_jzmjz1 VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS course_item_grades (
    course_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,course_item_grade_ts TIMESTAMP
    ,course_item_passing_state_id INT4
    ,course_item_grade_overall FLOAT4
    ,course_item_grade_verified FLOAT4
    ,course_item_grade_pending FLOAT4
);
CREATE TABLE IF NOT EXISTS on_demand_session_memberships (
    course_id VARCHAR(50)
    ,on_demand_session_id VARCHAR(50)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,on_demand_sessions_membership_start_ts TIMESTAMP
    ,on_demand_sessions_membership_end_ts TIMESTAMP
);
CREATE TABLE IF NOT EXISTS demographics_question_types (
    question_type_id INT4
    ,question_type_desc VARCHAR(25)
);
CREATE TABLE IF NOT EXISTS assessment_actions (
    assessment_action_id VARCHAR(50)
    ,assessment_action_base_id VARCHAR(50)
    ,assessment_id VARCHAR(50)
    ,assessment_scope_id VARCHAR(300)
    ,assessment_scope_type_id INT4
    ,assessment_action_version INT4
    ,assessment_action_ts TIMESTAMP
    ,assessment_action_start_ts TIMESTAMP
    ,guest_user_id VARCHAR(50)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
);
CREATE TABLE IF NOT EXISTS course_formative_quiz_grades (
    course_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,course_quiz_grade_ts TIMESTAMP
    ,course_quiz_grade FLOAT4
    ,course_quiz_max_grade FLOAT4
);
CREATE TABLE IF NOT EXISTS specializations (
    specialization_id VARCHAR(50)
    ,specialization_slug VARCHAR(255)
    ,specialization_name VARCHAR(2000)
    ,specialization_display_page_launch_ts TIMESTAMP
    ,sequence_branch_id VARCHAR(255)
    ,specialization_version INT8
    ,base_specialization_id VARCHAR(255)
    ,specialization_primary_domain VARCHAR(255)
    ,specialization_primary_subdomain VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS assessment_regex_patterns (
    assessment_question_id VARCHAR(50)
    ,assessment_pattern_id VARCHAR(50)
    ,assessment_pattern_regex VARCHAR(20000)
    ,assessment_pattern_feedback VARCHAR(20000)
    ,assessment_pattern_correct BOOL
);
CREATE TABLE IF NOT EXISTS discussion_question_followings (
    eitdigital_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(50)
    ,discussion_question_id VARCHAR(50)
    ,discussion_question_following_active BOOL
    ,discussion_question_following_ts TIMESTAMP
);
CREATE TABLE IF NOT EXISTS assessment_text_exact_match_questions (
    assessment_question_id VARCHAR(50)
    ,default_incorrect_feedback VARCHAR(20000)
);
CREATE TABLE IF NOT EXISTS course_branches (
    course_id VARCHAR(50)
    ,course_branch_id VARCHAR(50)
    ,course_branch_changes_description VARCHAR(65535)
    ,authoring_course_branch_name VARCHAR(255)
    ,authoring_course_branch_created_ts TIMESTAMP
);
CREATE TABLE IF NOT EXISTS discussion_question_flags (
    eitdigital_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(50)
    ,discussion_question_id VARCHAR(50)
    ,discussion_question_flag_active BOOL
    ,discussion_question_flag_ts TIMESTAMP
);
CREATE TABLE IF NOT EXISTS demographics_answers (
    question_id INT4
    ,eitdigital_user_id VARCHAR(50) NOT NULL
    ,submission_ts TIMESTAMP
    ,choice_id INT4
    ,answer_int INT4
);
CREATE TABLE IF NOT EXISTS assessment_math_expression_questions (
    assessment_question_id VARCHAR(50)
    ,default_incorrect_feedback VARCHAR(20000)
);
COMMENT ON TABLE peer_review_part_free_responses IS 'Answers to free response review schema questions ("singleLineInput" and "multiLineInput")';
COMMENT ON COLUMN peer_review_part_free_responses.peer_assignment_id IS 'The assignment that this answer applies to';
COMMENT ON COLUMN peer_review_part_free_responses.peer_assignment_review_schema_part_id IS 'The part of the review schema that this answer applies to';
COMMENT ON COLUMN peer_review_part_free_responses.peer_review_id IS 'The review that this answer is part of';
COMMENT ON COLUMN peer_review_part_free_responses.peer_review_part_free_response_text IS 'The answer';
COMMENT ON TABLE assessment_reflect_questions IS 'Information of ungraded text entry question';
COMMENT ON COLUMN assessment_reflect_questions.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_reflect_questions.assessment_question_feedback IS 'No column description available';
COMMENT ON TABLE peer_reviews IS 'The reviews that reviewers have made for submissions';
COMMENT ON COLUMN peer_reviews.peer_review_id IS 'Primary Key';
COMMENT ON COLUMN peer_reviews.peer_submission_id IS 'The submission that this review is for';
COMMENT ON COLUMN peer_reviews.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital peer_assignments data.';
COMMENT ON COLUMN peer_reviews.peer_review_created_ts IS 'The time when that the review was created. The review never changes after creation';
COMMENT ON COLUMN peer_reviews.peer_review_first_visible_to_submitter_ts IS 'The time when that the review was first visible to the submission submitter. Is NULL if the review is not visible. Note that an invisible review might never become visible. Is non-NULL if and only if the review was applied to the grade.';
COMMENT ON COLUMN peer_reviews.peer_review_marked_helpful_ts IS 'The time that the review receiver marked this review as helpful. Is NULL if the receiver has not marked it helpful. This feature is deprecated in favor of ratings around 2015-06-19 (see peer_review_rated_ts and peer_review_ratings
columns below), but this column still contains data from when the feature was not deprecated.';
COMMENT ON COLUMN peer_reviews.peer_review_rated_ts IS 'The time that the review receiver rated this review. Is NULL if the receiver has not rated it. This feature started existing around 2015-06-19 and stopped existing around 2015-09-16.';
COMMENT ON COLUMN peer_reviews.peer_review_rating IS 'The rating that the review receiver gave this review. Is NULL if the receiver has not rated it. This feature started existing around 2015-06-19 and stopped existing around 2015-09-16.';
COMMENT ON COLUMN peer_reviews.peer_review_is_mentor_review IS 'No column description available';
COMMENT ON TABLE programming_submissions IS 'submissions of a programming assignment';
COMMENT ON COLUMN programming_submissions.programming_submission_id IS 'The unversioned id.';
COMMENT ON COLUMN programming_submissions.programming_assignment_id IS 'The assignment that this submission is for.
';
COMMENT ON COLUMN programming_submissions.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital programming_assignments data.';
COMMENT ON COLUMN programming_submissions.programming_submission_created_ts IS 'The timestamp of this submission.';
COMMENT ON COLUMN programming_submissions.programming_submission_type IS 'Type("multipart")';
COMMENT ON COLUMN programming_submissions.programming_submission_grading_status IS 'Status("started", "successed", "failed")';
COMMENT ON COLUMN programming_submissions.programming_submission_score IS 'No column description available';
COMMENT ON TABLE ecb_evaluators IS 'Executable code block evaluators define how input from learners will be evaluated. At a high level, evaluators include a reference to a language-specific ''engine'', and a ''harness'' definition that parameterizes the execution mode - for example graded feedback vs. simple execution.';
COMMENT ON COLUMN ecb_evaluators.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN ecb_evaluators.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be the same for the purposes of progress and grade computations. For example, if you complete item xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very different from item xxxxx in branch A.';
COMMENT ON COLUMN ecb_evaluators.ecb_evaluator_id IS 'Unique, versioned id for the evaluator.';
COMMENT ON COLUMN ecb_evaluators.ecb_engine_id IS 'Versioned id for the engine used by the evaluator.';
COMMENT ON COLUMN ecb_evaluators.ecb_evaluator_harness IS 'JSON-formatted harness configuration for evaluation requests. Harness types include "TestCaseHarness" and "REPLHarness" types, which define graded feedback and simple evaluation modes, respectively.';
COMMENT ON TABLE programming_assignment_submission_schema_part_grid_schemas IS 'Information of asynchronously graded parts of programming assignments';
COMMENT ON COLUMN programming_assignment_submission_schema_part_grid_schemas.programming_assignment_id IS 'The universal Id of the programming assignment.';
COMMENT ON COLUMN programming_assignment_submission_schema_part_grid_schemas.programming_assignment_submission_schema_part_id IS 'The universal Id of the assignment part';
COMMENT ON COLUMN programming_assignment_submission_schema_part_grid_schemas.programming_assignment_submission_schema_part_grid_gyd0w6 IS 'Expected file name. Name shortened from ''programming_assignment_submission_schema_part_grid_schema_expected_file_name'' for compatibility.';
COMMENT ON COLUMN programming_assignment_submission_schema_part_grid_schemas.programming_assignment_submission_schema_part_grid_lb2xog IS 'The universal Id of the part executor in Grid. Name shortened from ''programming_assignment_submission_schema_part_grid_schema_executor_id'' for compatibility.';
COMMENT ON COLUMN programming_assignment_submission_schema_part_grid_schemas.programming_assignment_submission_schema_part_grid_49aqrn IS 'Custom grid grader parameters. Name shortened from ''programming_assignment_submission_schema_part_grid_custom_grader_parameters'' for compatibility.';
COMMENT ON TABLE discussion_answers IS 'For each course''s discussion forums, contains the list of the answers that users submitted to discussion questions.';
COMMENT ON COLUMN discussion_answers.discussion_answer_id IS 'The id of the answer in the discussion forum.';
COMMENT ON COLUMN discussion_answers.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital discussions data.';
COMMENT ON COLUMN discussion_answers.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN discussion_answers.discussion_answer_content IS 'Content of the answer (CML)';
COMMENT ON COLUMN discussion_answers.discussion_question_id IS 'The id of a question in the discussion forum. ';
COMMENT ON COLUMN discussion_answers.discussion_answer_parent_discussion_answer_id IS 'Parent answer if this is a nested reply (we cap nesting at 1 level)';
COMMENT ON COLUMN discussion_answers.discussion_answer_created_ts IS 'The timestamp of when the discussion answer was created. ';
COMMENT ON COLUMN discussion_answers.discussion_answer_updated_ts IS 'The timestamp of when the discussion answer was updated.';
COMMENT ON TABLE peer_submissions IS 'Submissions to peer assignments.
Caveats: This table contains public submissions, draft submissions, and deleted submissions. Use the peer_submission_is_draft and peer_submission_has_been_removed_from_public columns to disambiguate';
COMMENT ON COLUMN peer_submissions.peer_submission_id IS 'Peer submission id';
COMMENT ON COLUMN peer_submissions.peer_assignment_id IS 'The assignment that this submission is for';
COMMENT ON COLUMN peer_submissions.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital peer_assignments data.';
COMMENT ON COLUMN peer_submissions.peer_submission_created_ts IS 'The time that this submission was created. The submission itself never changes after creation, but some columns affected by things outside the submission may change after creation: (i) `peer_submission_removed_from_public_ts` changes from NULL to non-NULL if/when the author removes the submission from the public (ii) `peer_submission_score_available_ts` and `peer_submission_score` change from NULL to non-NULL if/when the submission receives a score';
COMMENT ON COLUMN peer_submissions.peer_submission_is_draft IS 'Whether this submission is a draft. Drafts are not visible to anyone except the author';
COMMENT ON COLUMN peer_submissions.peer_submission_title IS 'The "title" field of the submission';
COMMENT ON COLUMN peer_submissions.peer_submission_removed_from_public_ts IS 'When this submission was removed from the public review area. This is NULL for public submissions that haven''t been removed. This is also NULL for drafts because they were never in the public review area';
COMMENT ON COLUMN peer_submissions.peer_submission_score_available_ts IS 'The first time at which the score for this submission was available. This is NULL for submissions without scores and for assignments that don''t generate scores. Note currently (2016-01) there is a lag between a submission get all reviews needed and peer_submission_score_available_ts. And for learners who submit by review deadline, they willl get be graded even if not meeting N-review requirement, as long as at least being reviewed once(under which scenario, this timestamp will be past review deadline).';
COMMENT ON COLUMN peer_submissions.peer_submission_score IS 'The submission''s score. This is NULL for submissions without scores and for assignments that don''t generate scores';
COMMENT ON COLUMN peer_submissions.peer_submission_is_mentor_graded IS 'No column description available';
COMMENT ON TABLE users_courses__certificate_payments IS '[No table description available]';
COMMENT ON COLUMN users_courses__certificate_payments.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital data.';
COMMENT ON COLUMN users_courses__certificate_payments.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN users_courses__certificate_payments.met_payment_condition IS 'No column description available';
COMMENT ON COLUMN users_courses__certificate_payments.was_payment IS 'No column description available';
COMMENT ON COLUMN users_courses__certificate_payments.was_finaid_grant IS 'No column description available';
COMMENT ON COLUMN users_courses__certificate_payments.was_group_sponsored IS 'No column description available';
COMMENT ON TABLE notebook_workspaces IS 'Notebook workspace provide a user with access to a Jupyter server with a persistent file system that stores personal files.';
COMMENT ON COLUMN notebook_workspaces.notebook_workspace_id IS 'Unique id for the notebook workspace. ';
COMMENT ON COLUMN notebook_workspaces.notebook_workspace_template_base_id IS 'No column description available';
COMMENT ON COLUMN notebook_workspaces.notebook_workspace_created_ts IS 'No column description available';
COMMENT ON COLUMN notebook_workspaces.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital data.';
COMMENT ON TABLE peer_assignment_review_schema_part_options IS 'The options for review schema parts that have options';
COMMENT ON COLUMN peer_assignment_review_schema_part_options.peer_assignment_id IS 'The assignment that this option is in';
COMMENT ON COLUMN peer_assignment_review_schema_part_options.peer_assignment_review_schema_part_id IS 'The schema part that this option is for';
COMMENT ON COLUMN peer_assignment_review_schema_part_options.peer_assignment_review_schema_part_option_id IS 'This option''s id within the part';
COMMENT ON COLUMN peer_assignment_review_schema_part_options.peer_assignment_review_schema_part_option_text IS 'The text of this option';
COMMENT ON COLUMN peer_assignment_review_schema_part_options.peer_assignment_review_schema_part_option_score IS 'The score of this option. Note that this is nullable because not all options make scores.';
COMMENT ON TABLE course_item_assessments IS 'For each course, provide the mapping between course items and versioned assessments.';
COMMENT ON COLUMN course_item_assessments.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN course_item_assessments.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be the same for the purposes of progress and grade computations. For example, if you complete item xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very different from item xxxxx in branch A.';
COMMENT ON COLUMN course_item_assessments.assessment_id IS 'Each quiz is assigned a unique id that is a combination of a base id and version. ';
COMMENT ON TABLE assessment_questions IS 'Information of quiz questions';
COMMENT ON COLUMN assessment_questions.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_questions.assessment_question_base_id IS 'No column description available';
COMMENT ON COLUMN assessment_questions.assessment_question_version IS 'the version of the question';
COMMENT ON COLUMN assessment_questions.assessment_question_type_id IS '	
A numerical identifier correspnding to each of the assessment question types described by the assessment_question_type_desc field';
COMMENT ON COLUMN assessment_questions.assessment_question_prompt IS 'The raw text data of the question prompt. This may contain additional markup language for formatting purposes.';
COMMENT ON COLUMN assessment_questions.assessment_question_update_ts IS 'When the question was updated';
COMMENT ON TABLE course_lessons IS '(Deprecated, Please use prod.course_branch_lessons) Subsection of a single module, can be composed of multiple items in a course.
Note: For courses that uses the Course Versioning feature, please refer to the branch version of this table.';
COMMENT ON COLUMN course_lessons.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN course_lessons.course_lesson_id IS 'Lesson id that is unique within a single course.';
COMMENT ON COLUMN course_lessons.course_module_id IS '5 character alphanumeric string identifying an individual module within a course. course_module_id need not be unique, but a course_module_id/course_id pair is unique.';
COMMENT ON COLUMN course_lessons.course_lesson_order IS 'The order of a lesson within a particular module, with "0" indicating the first lesson in a module. ';
COMMENT ON COLUMN course_lessons.course_lesson_name IS 'The name of a lesson, as seen in the learner view of the course. ';
COMMENT ON TABLE assessment_options IS 'Information of choice options for a question';
COMMENT ON COLUMN assessment_options.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_options.assessment_option_id IS 'unique choice option ids of a question';
COMMENT ON COLUMN assessment_options.assessment_option_display IS 'The JSON blob containing the question prompt. This is written in a custom Coursera markup language. The actual prompt text is encapsulated within key named "value."';
COMMENT ON COLUMN assessment_options.assessment_option_feedback IS 'The text that is displayed to learners upon answering a question correctly';
COMMENT ON COLUMN assessment_options.assessment_option_correct IS 'For text answer type questions, instructors can insert both correct and incorrect answer patterns in order to provide learners with tailored feedback based on common solutions or misconceptions. This field indicates whether the pattern was one that corresponded to a correct solution (t) or an incorrect solution (f).';
COMMENT ON COLUMN assessment_options.assessment_option_index IS 'Index of the option within the question. Starts at 0, which is the top option.
If the question is shuffled, the index may not match the order the learner sees when answering.';
COMMENT ON TABLE assessment_assessments_questions IS 'Link table between the assessment and the questions data and describe high-level information of questions in an assessment.';
COMMENT ON COLUMN assessment_assessments_questions.assessment_id IS 'The id that uniquely identifies an assessment';
COMMENT ON COLUMN assessment_assessments_questions.assessment_question_id IS 'The id that uniquely identifies a question in an assessment';
COMMENT ON COLUMN assessment_assessments_questions.assessment_question_internal_id IS 'No column description available';
COMMENT ON COLUMN assessment_assessments_questions.assessment_question_cuepoint IS 'The number of milliseconds into a lecture video that the in-video question is placed. For quizzes that are not in-video quizzes, it is 0.';
COMMENT ON COLUMN assessment_assessments_questions.assessment_question_order IS 'Order in which the questions are asked in the assessment.';
COMMENT ON COLUMN assessment_assessments_questions.assessment_question_weight IS 'No column description available';
COMMENT ON TABLE programming_assignment_submission_schema_part_xbkvdx IS 'possible correct responses to a part of a programming assignment. Name shortened from ''programming_assignment_submission_schema_part_possible_responses'' for compatibility.';
COMMENT ON COLUMN programming_assignment_submission_schema_part_xbkvdx.programming_assignment_id IS 'The universal Id of the programming assignment';
COMMENT ON COLUMN programming_assignment_submission_schema_part_xbkvdx.programming_assignment_submission_schema_part_id IS 'The universal Id of a programming assignment part.';
COMMENT ON COLUMN programming_assignment_submission_schema_part_xbkvdx.programming_assignment_submission_schema_part_m934n IS 'The order of the possible response in the programming assignment. Name shortened from ''programming_assignment_submission_schema_part_possible_response_order'' for compatibility.';
COMMENT ON COLUMN programming_assignment_submission_schema_part_xbkvdx.programming_assignment_submission_schema_part_d4407a IS 'The result of the possible response. Name shortened from ''programming_assignment_submission_schema_part_possible_response_is_correct'' for compatibility.';
COMMENT ON COLUMN programming_assignment_submission_schema_part_xbkvdx.programming_assignment_submission_schema_part_mrj41 IS 'The feedback of the possible response. Name shortened from ''programming_assignment_submission_schema_part_possible_response_feedback'' for compatibility.';
COMMENT ON COLUMN programming_assignment_submission_schema_part_xbkvdx.programming_assignment_submission_schema_part_2fyxz4 IS 'Numeric type convert By Internal Class. For example, Internal(2, 3, true, false) -> [2, 3),
 Regex type convert by AnswerPattern Class. Name shortened from ''programming_assignment_submission_schema_part_possible_response_answers'' for compatibility.';
COMMENT ON TABLE course_grades IS 'This table provides the grading event of when the user reached his or her highest grade in one course (of any branch of the course, see course_branch_grades for specific branch grades).
Also provides the passing/not-passing state for each user and course.';
COMMENT ON COLUMN course_grades.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN course_grades.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital data.';
COMMENT ON COLUMN course_grades.course_grade_ts IS 'The timestamp for when a learner''s course grade has changed. This occurs everytime a grading event takes place. ';
COMMENT ON COLUMN course_grades.course_passing_state_id IS 'A learner can be in one of four "states" with respect to passing a course: 0 means they have started the course but not passed, 1 means they have completed the course without identity verification, 2 means they''ve completed the course with identity verification, 3 means the course is not passable.';
COMMENT ON COLUMN course_grades.course_grade_overall_passed_items IS 'The number of items in the course that the learner has passed.';
COMMENT ON COLUMN course_grades.course_grade_overall IS 'The grade a learner has in the course, according to the instructor-set grading policy, based on passed items. ';
COMMENT ON COLUMN course_grades.course_grade_verified_passed_items IS 'The number of items in the course that the learner has passed and verified their identity. ';
COMMENT ON COLUMN course_grades.course_grade_verified IS 'The grade a learner has in the course, according to the instructor-set grading policy, based on items that have been passed and for which the learner''s identity has been verified. ';
COMMENT ON TABLE course_memberships IS 'A log of when and what membership role did a user get assigned to for a course.
A <user_id, course_id> tuple can have multiple values in this table to record the different roles across time.  For example, a learner could have watched the preview content (BROWSER), then hit the enroll button to join (LEARNER), and then unenrolled a few days later (NOT_ENROLLED).';
COMMENT ON COLUMN course_memberships.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital data.';
COMMENT ON COLUMN course_memberships.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN course_memberships.course_membership_role IS 'A user can have one of multiple roles in a course, set either by their affiliation to the course, or their activity. Currently the options include: not_enrolled, pre_enrolled_learner, browser, learner, mentor, teaching_staff, instructor, university_admin. ';
COMMENT ON COLUMN course_memberships.course_membership_ts IS 'The timestamp for when a user became affiliated with the course in that particular membership role.';
COMMENT ON TABLE assessment_pattern_flag_types IS 'Information on pattern flag types';
COMMENT ON COLUMN assessment_pattern_flag_types.assessment_pattern_flag_type_id IS 'ID for a pattern flag type';
COMMENT ON COLUMN assessment_pattern_flag_types.assessment_pattern_flag_type_desc IS 'A description, e.g 2 = ''CASE_INSENSITIVE'', 32 = ''DOTALL''';
COMMENT ON TABLE course_modules IS '(Deprecated, Please use prod.course_branch_modules) Contains each course''s set of modules, their names, their description, and their order.
Note: For courses that use the Course Versioning feature, please refer to the branch version of this table.';
COMMENT ON COLUMN course_modules.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN course_modules.course_module_id IS '5 character alphanumeric string identifying an individual module within a course. course_module_id need not be unique, but a course_module_id/course_id pair is unique.';
COMMENT ON COLUMN course_modules.course_module_order IS 'The order of a module within a particular course, with "0" indicating the first module in the course. ';
COMMENT ON COLUMN course_modules.course_module_name IS 'The name of a module, as seen in the learner view of the course. ';
COMMENT ON COLUMN course_modules.course_module_desc IS 'The description of the module, seen as the note to learners above the module in the learner view of the course. ';
COMMENT ON TABLE course_item_peer_assignments IS 'For each course, provide the mapping between course items and versioned peer assignments.';
COMMENT ON COLUMN course_item_peer_assignments.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN course_item_peer_assignments.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be the same for the purposes of progress and grade computations. For example, if you complete item xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very different from item xxxxx in branch A.';
COMMENT ON COLUMN course_item_peer_assignments.peer_assignment_id IS 'This is a ''course_content_id'', and is versioned. (e.g ABC@1 is version 1)';
COMMENT ON TABLE assessment_pattern_types IS 'Info on pattern matching questions: Text Answer, Numeric, Regular Expression, and Math Expression';
COMMENT ON COLUMN assessment_pattern_types.assessment_pattern_type_id IS 'No column description available';
COMMENT ON COLUMN assessment_pattern_types.assessment_pattern_type_desc IS 'Our assessments system defines three types of pattern matching questions: Text Answer, Numeric, Regular Expression, and Math Expression. ';
COMMENT ON TABLE peer_submission_part_urls IS 'Answers to the submission schema questions, for the "fileUpload" and "url" submission schema part types';
COMMENT ON COLUMN peer_submission_part_urls.peer_assignment_id IS 'The assignment that this answer applies to';
COMMENT ON COLUMN peer_submission_part_urls.peer_assignment_submission_schema_part_id IS 'The part of the submission schema that this answer applies to';
COMMENT ON COLUMN peer_submission_part_urls.peer_submission_id IS 'The submission that this answer is part of';
COMMENT ON COLUMN peer_submission_part_urls.peer_submission_part_url_url IS 'The url link of the answer';
COMMENT ON COLUMN peer_submission_part_urls.peer_submission_part_url_title IS 'The url title of the answer';
COMMENT ON COLUMN peer_submission_part_urls.peer_submission_part_url_description IS 'The url description of the answer';
COMMENT ON TABLE assessment_single_numeric_questions IS 'Information of single numeric (Numeric match) questions';
COMMENT ON COLUMN assessment_single_numeric_questions.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_single_numeric_questions.default_incorrect_feedback IS 'The default feedback to the learner should the learner answer the question incorrectly';
COMMENT ON TABLE programming_assignments IS 'Information of programming assignments';
COMMENT ON COLUMN programming_assignments.programming_assignment_id IS 'This is a ''course_content_id'', and is versioned. (e.g ABC@1 is version 1)';
COMMENT ON COLUMN programming_assignments.programming_assignment_base_id IS 'None versioned id';
COMMENT ON COLUMN programming_assignments.programming_assignment_type IS 'The type ("standard", "graded", "closed").';
COMMENT ON COLUMN programming_assignments.programming_assignment_submission_type IS 'The type ("mulitpart")';
COMMENT ON COLUMN programming_assignments.programming_assignment_instruction_text IS 'The CML Instruction content';
COMMENT ON COLUMN programming_assignments.programming_assignment_passing_fraction IS 'Fraction of the maximum possible score that you must achieve in order to pass. This only exists for assignments that generate scores.';
COMMENT ON COLUMN programming_assignments.programming_assignment_submission_builder_schema_type IS 'No column description available';
COMMENT ON COLUMN programming_assignments.programming_assignment_submission_builder_schema IS 'No column description available';
COMMENT ON COLUMN programming_assignments.programming_assignment_update_ts IS 'When this version of the assignment was created.';
COMMENT ON TABLE peer_assignment_submission_schema_parts IS 'The questions that a submitter must answer in their submission';
COMMENT ON COLUMN peer_assignment_submission_schema_parts.peer_assignment_id IS 'Assignment that this submission schema part lives in';
COMMENT ON COLUMN peer_assignment_submission_schema_parts.peer_assignment_submission_schema_part_id IS 'This part''s id within the assignment';
COMMENT ON COLUMN peer_assignment_submission_schema_parts.peer_assignment_submission_schema_part_type IS 'The type ("fileUpload", "plainText", "richText", "url")';
COMMENT ON COLUMN peer_assignment_submission_schema_parts.peer_assignment_submission_schema_part_order IS 'The order within the assignment (lowest comes first)';
COMMENT ON COLUMN peer_assignment_submission_schema_parts.peer_assignment_submission_schema_part_prompt IS 'The prompt (a question for the submitter to answer)';
COMMENT ON TABLE course_branch_modules IS '[No table description available]';
COMMENT ON COLUMN course_branch_modules.course_branch_id IS 'Each session is associated with a single branch. Learners enrolled in a session see the course contents associated with this branch.';
COMMENT ON COLUMN course_branch_modules.course_module_id IS '5 character alphanumeric string identifying an individual module within a course. course_module_id need not be unique, but a course_module_id/course_id pair is unique.';
COMMENT ON COLUMN course_branch_modules.course_branch_module_order IS 'No column description available';
COMMENT ON COLUMN course_branch_modules.course_branch_module_name IS 'No column description available';
COMMENT ON COLUMN course_branch_modules.course_branch_module_desc IS 'No column description available';
COMMENT ON TABLE assessment_checkbox_questions IS 'Information of checkbox quiz questions';
COMMENT ON COLUMN assessment_checkbox_questions.assessment_question_id IS 'unique id of a question in an assessment';
COMMENT ON COLUMN assessment_checkbox_questions.assessment_question_shuffle_options IS 'Answer options can either be displayed to the learner in the order in which they are listed within the authoring interface, or in a random order each time the learner attempts the assessment. If the answer option ordering is randomized, "assessment_question_shuffle_options" will be "t," and "f" otherwise';
COMMENT ON COLUMN assessment_checkbox_questions.assessment_question_allow_partial_scoring IS 'No column description available';
COMMENT ON TABLE users IS 'Information about Coursera users';
COMMENT ON COLUMN users.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital data.';
COMMENT ON COLUMN users.user_join_ts IS 'The timestamp of when the user joined Coursera.';
COMMENT ON COLUMN users.country_cd IS 'The country code of the user''s location, based on IP address or as set by the user in their profile. ';
COMMENT ON COLUMN users.region_cd IS 'The region code of the user''s location, based on IP address or as set by the user in their profile. ';
COMMENT ON COLUMN users.profile_language_cd IS 'The language code of the user''s language, based on IP address or as set by the user in their profile. ';
COMMENT ON COLUMN users.browser_language_cd IS 'The language code of the user''s language, as set in their browser.';
COMMENT ON COLUMN users.reported_or_inferred_gender IS 'The gender of either "male" or "female" or NULL, curated from reported and inferred sources.';
COMMENT ON COLUMN users.employment_status IS 'The selected value for the "Employment Status" field on the user''s profile.';
COMMENT ON COLUMN users.educational_attainment IS 'The selected value for the "Educational Attainment" field on the user''s profile.';
COMMENT ON COLUMN users.student_status IS 'The selected value for the "Student Status" field on the user''s profile.';
COMMENT ON TABLE feedback_item_comments IS 'Contains the contents of comments on items or sub-items, which should generally be flags';
COMMENT ON COLUMN feedback_item_comments.course_id IS 'Course id for the course receiving feedback';
COMMENT ON COLUMN feedback_item_comments.course_item_id IS 'Item id for the item receiving feedback';
COMMENT ON COLUMN feedback_item_comments.feedback_unit_id IS 'Detailed info for the element receiving feedback. Will generally be a versioned id for item-level feedback, or a sub-item id when feedback can be left on particular elements within an item, e.g. a part of a programming assignment';
COMMENT ON COLUMN feedback_item_comments.feedback_unit_type IS 'The type of the element feedback is being left on. May be an item type or sub-item type';
COMMENT ON COLUMN feedback_item_comments.feedback_system IS 'Feedback system: FLAG for item-level and sub-item-level flagging';
COMMENT ON COLUMN feedback_item_comments.detailed_context IS 'Contains information on the element and its parents, usually including versioning information';
COMMENT ON COLUMN feedback_item_comments.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital feedback data.';
COMMENT ON COLUMN feedback_item_comments.feedback_category IS 'The category flagged by the feedback';
COMMENT ON COLUMN feedback_item_comments.feedback_text IS 'CML text of the feedback';
COMMENT ON COLUMN feedback_item_comments.feedback_ts IS 'Timestamp when the feedback was left';
COMMENT ON COLUMN feedback_item_comments.feedback_active IS 'Indicates whether or not the feedback is still active, or if it was resolved, whether by the submitter or the instructor';
COMMENT ON TABLE assessment_response_patterns IS '[No table description available]';
COMMENT ON COLUMN assessment_response_patterns.assessment_response_id IS 'unique id for each of users'' responses to an assessment.';
COMMENT ON COLUMN assessment_response_patterns.assessment_pattern_id IS 'No column description available';
COMMENT ON COLUMN assessment_response_patterns.assessment_response_answer IS 'No column description available';
COMMENT ON COLUMN assessment_response_patterns.assessment_response_correct IS 'Whether the response was correct';
COMMENT ON COLUMN assessment_response_patterns.assessment_response_feedback IS 'Feedback shown to the user on interacting with the assessment.';
COMMENT ON TABLE assessment_math_expression_patterns IS 'the patterns of the answers to a math assessment question';
COMMENT ON COLUMN assessment_math_expression_patterns.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_math_expression_patterns.assessment_pattern_id IS 'No column description available';
COMMENT ON COLUMN assessment_math_expression_patterns.assessment_pattern_display IS 'The JSON blob containing the question prompt. This is written in a custom Coursera markup language. The actual prompt text is encapsulated within key named "value."';
COMMENT ON COLUMN assessment_math_expression_patterns.assessment_pattern_feedback IS 'The text that is displayed to learners upon answering a question that matches the pattern.';
COMMENT ON COLUMN assessment_math_expression_patterns.assessment_pattern_correct IS 'For math expression type questions, instructors can insert both correct and incorrect answer patterns in order to provide learners with tailored feedback based on common solutions or misconceptions. This field indicates whether the pattern was one that corresponded to a correct solution (t) or an incorrect solution (f).';
COMMENT ON TABLE programming_submission_part_evaluations IS 'scores of individual parts of a programming assignment';
COMMENT ON COLUMN programming_submission_part_evaluations.programming_assignment_id IS 'The universal id of the programming assignment.';
COMMENT ON COLUMN programming_submission_part_evaluations.programming_assignment_submission_schema_part_id IS 'The universal part id of the programming assignment. maybe duplicate in different programming assignment.';
COMMENT ON COLUMN programming_submission_part_evaluations.programming_submission_id IS 'The universal submission Id.';
COMMENT ON COLUMN programming_submission_part_evaluations.programming_submission_part_score IS 'Score of this part.';
COMMENT ON COLUMN programming_submission_part_evaluations.programming_submission_part_grading_ts IS 'Timestamp of this part.';
COMMENT ON COLUMN programming_submission_part_evaluations.programming_submission_part_feedback IS 'Feedback of this part.';
COMMENT ON TABLE discussion_question_votes IS 'records when a discussion question was upvoted';
COMMENT ON COLUMN discussion_question_votes.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital discussions data.';
COMMENT ON COLUMN discussion_question_votes.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN discussion_question_votes.discussion_question_id IS 'The id of the discussion question';
COMMENT ON COLUMN discussion_question_votes.discussion_question_vote_value IS '0 = nothing, 1 = upvote';
COMMENT ON COLUMN discussion_question_votes.discussion_question_vote_ts IS 'Timestamp of vote';
COMMENT ON TABLE peer_skips IS 'Users may "skip" reviewing a submission if there is a problem with it. This table records all the skips that happen.';
COMMENT ON COLUMN peer_skips.peer_skip_id IS 'Primary Key';
COMMENT ON COLUMN peer_skips.peer_submission_id IS 'The submission that has been skipped';
COMMENT ON COLUMN peer_skips.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital peer_assignments data.';
COMMENT ON COLUMN peer_skips.peer_skip_created_ts IS 'The time when the skipper skipped this submission';
COMMENT ON COLUMN peer_skips.peer_skip_type IS 'The type of skip ("inappropriateContent", "incompleteSubmission", "other", "plagiarism")';
COMMENT ON COLUMN peer_skips.peer_skip_text IS 'The explanation that the skipper gave';
COMMENT ON TABLE demographics_questions IS 'Stores questions from the demographics survey and user intent questions.';
COMMENT ON COLUMN demographics_questions.question_id IS 'Integer id for the questions
';
COMMENT ON COLUMN demographics_questions.question_type_id IS 'Indiciation of where this data was collected, based on id 0 (choice_id), 1 (integer response), 2 (text response).';
COMMENT ON COLUMN demographics_questions.question_desc IS 'The text of the quesiton the learner was asked.';
COMMENT ON TABLE assessment_responses IS 'information of learner responses to a quiz question and the score received';
COMMENT ON COLUMN assessment_responses.assessment_response_id IS 'unique id for each of users'' responses to an assessment.';
COMMENT ON COLUMN assessment_responses.assessment_id IS 'unique id of each assessment';
COMMENT ON COLUMN assessment_responses.assessment_action_id IS 'unique id for each interaction of the user with the assessment, linking to the assessment_action_id field in the
assessment_actions table';
COMMENT ON COLUMN assessment_responses.assessment_action_version IS 'The version of the learner''s responses to the assessment';
COMMENT ON COLUMN assessment_responses.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_responses.assessment_response_score IS 'score for the particular assessment response';
COMMENT ON COLUMN assessment_responses.assessment_response_weighted_score IS 'No column description available';
COMMENT ON TABLE assessment_regex_questions IS '[No table description available]';
COMMENT ON COLUMN assessment_regex_questions.assessment_question_id IS 'The id that uniquely identifies a question in an assessment';
COMMENT ON COLUMN assessment_regex_questions.default_incorrect_feedback IS 'The text that is displayed to learners upon answering a question incorrectly. In the authoring interface, this corresponds to the "Explain Incorrect Answer (optional)" field';
COMMENT ON TABLE assessment_scope_types IS 'The description of the varying contexts in which the user can interact with the assessment';
COMMENT ON COLUMN assessment_scope_types.assessment_scope_type_id IS 'the id that links the assessmnt_scope_types table to see the assessment scope type description';
COMMENT ON COLUMN assessment_scope_types.assessment_scope_type_desc IS 'No column description available';
COMMENT ON TABLE programming_submission_part_text_submissions IS 'learner submissions to synchronously graded questions of a programming assignment';
COMMENT ON COLUMN programming_submission_part_text_submissions.programming_assignment_id IS 'The universal id of programming assignment.';
COMMENT ON COLUMN programming_submission_part_text_submissions.programming_assignment_submission_schema_part_id IS 'The universal part id of the programming assignment.';
COMMENT ON COLUMN programming_submission_part_text_submissions.programming_submission_id IS 'The universal submission id.';
COMMENT ON COLUMN programming_submission_part_text_submissions.programming_submission_part_text_submission_answer IS 'The text answer of the submission. Regex or Numeric.';
COMMENT ON TABLE assessment_mcq_reflect_questions IS 'Information of  (Reflective / Ungraded) Multiple Choice Questions';
COMMENT ON COLUMN assessment_mcq_reflect_questions.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_mcq_reflect_questions.assessment_question_shuffle_options IS 'Answer options can either be displayed to the learner in the order in which they are listed within the authoring interface, or in a random order each time the learner attempts the assessment. If the answer option ordering is randomized, "assessment_question_shuffle_options" will be "t," and "f" otherwise';
COMMENT ON TABLE feedback_course_comments IS 'Contains the contents of course reviews';
COMMENT ON COLUMN feedback_course_comments.course_id IS 'Course id for the course receiving reviews';
COMMENT ON COLUMN feedback_course_comments.feedback_system IS 'Feedback system: STAR for course reviews';
COMMENT ON COLUMN feedback_course_comments.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital feedback data.';
COMMENT ON COLUMN feedback_course_comments.feedback_category IS 'For course reviews, the only category should be "generic"';
COMMENT ON COLUMN feedback_course_comments.feedback_text IS 'CML text of the review';
COMMENT ON COLUMN feedback_course_comments.feedback_ts IS 'Timestamp when the feedback was left';
COMMENT ON TABLE demographics_choices IS 'Stores choices to the questions from the demographics survey and user intent questions.';
COMMENT ON COLUMN demographics_choices.question_id IS 'Integer id for the questions';
COMMENT ON COLUMN demographics_choices.choice_id IS 'The choice id helps to identify how a learner responded to a demographic question. The choice id itself is not a unique identifier, but the question id/choice id combo is unique and relates to a specific choice description (choice_desc) that provides the text of a learner''s answer selection. ';
COMMENT ON COLUMN demographics_choices.choice_desc IS 'Indicated by a unique question id/choice id combo, this provides the text of a learner''s answer selection to a demographic question.';
COMMENT ON TABLE course_passing_states IS 'The descriptions of passing states for courses from the course_grades table';
COMMENT ON COLUMN course_passing_states.course_passing_state_id IS 'a unique identifier for course passing state';
COMMENT ON COLUMN course_passing_states.course_passing_state_desc IS 'a description for course passing state (e.g. "passed", "verified passed")';
COMMENT ON TABLE peer_submission_part_scores IS 'Part scores that a submission gets. This only exists for submissions that have scores.';
COMMENT ON COLUMN peer_submission_part_scores.peer_assignment_id IS 'The assignment that this part score applies to';
COMMENT ON COLUMN peer_submission_part_scores.peer_assignment_review_schema_part_id IS 'The part of the review schema that this score applies to';
COMMENT ON COLUMN peer_submission_part_scores.peer_submission_id IS 'The submission that this score applies to';
COMMENT ON COLUMN peer_submission_part_scores.peer_submission_part_score IS 'The score';
COMMENT ON TABLE peer_assignment_review_schema_parts IS 'The questions that the reviewer must answer';
COMMENT ON COLUMN peer_assignment_review_schema_parts.peer_assignment_id IS 'Assignment that this review schema part lives in';
COMMENT ON COLUMN peer_assignment_review_schema_parts.peer_assignment_review_schema_part_id IS 'This part''s id within the assignment';
COMMENT ON COLUMN peer_assignment_review_schema_parts.peer_assignment_review_schema_part_type IS 'The type ("multiLineInput", "options", "singleLineInput", "yesNo")';
COMMENT ON COLUMN peer_assignment_review_schema_parts.peer_assignment_review_schema_part_order IS 'The order within the assignment (lowest comes first)';
COMMENT ON COLUMN peer_assignment_review_schema_parts.peer_assignment_review_schema_part_prompt IS 'The prompt (a question for the reviewer to answer)';
COMMENT ON COLUMN peer_assignment_review_schema_parts.peer_assignment_review_schema_part_maximum_score IS 'The maximum score that this part can give. This is nullable because not all parts generate scores';
COMMENT ON TABLE courses IS 'The list of Coursera''s courses on the Phoenix platform, including info on its important dates (e.g. when it was launched)';
COMMENT ON COLUMN courses.course_id IS '22 character unique string identifying an individual course';
COMMENT ON COLUMN courses.course_slug IS 'The shortname of a course. This can be found in the course url, in the piece immediately following "coursera.org/learn/".';
COMMENT ON COLUMN courses.course_name IS 'The name of a course. ';
COMMENT ON COLUMN courses.course_launch_ts IS 'The timestamp of when a course was made available to learners. ';
COMMENT ON COLUMN courses.course_update_ts IS 'The timestamp of when a course was last updated. ';
COMMENT ON COLUMN courses.course_deleted IS 'TRUE if the course is deleted.';
COMMENT ON COLUMN courses.course_graded IS 'Indicates whether a course contains graded items: 0 (no graded items), 1 (has graded items)';
COMMENT ON COLUMN courses.course_desc IS 'The course description which appears on the landing page';
COMMENT ON COLUMN courses.course_restricted IS 'Indicates whether enroll access to the course is open or restricted only to eligible participants. All courses are unrestricted with the exception of deprecated courses: 0 (unrestricted), 1 (restricted)';
COMMENT ON COLUMN courses.course_verification_enabled_at_ts IS 'The timestamp of when Course Certificates were enabled for a course. ';
COMMENT ON COLUMN courses.primary_translation_equivalent_course_id IS 'The course id for the primary translation of a course. ';
COMMENT ON COLUMN courses.course_preenrollment_ts IS 'The timestamp of when pre-enrollment was opened for a course. ';
COMMENT ON COLUMN courses.course_workload IS 'The estimated workload of a course as shown on the course description page. ';
COMMENT ON COLUMN courses.course_session_enabled_ts IS 'The timestamp of when this course used sessions (instead of on-demand)';
COMMENT ON COLUMN courses.course_promo_photo_s3_bucket IS 'S3 bucket containing the promo photo for the course (used in catalog, for example).';
COMMENT ON COLUMN courses.course_promo_photo_s3_key IS 'S3 key (corresponding to `course_promo_photo_s3_bucket`)';
COMMENT ON COLUMN courses.course_level IS 'The course difficulty level: BEGINNER, INTERMEDIATE or ADVANCED.';
COMMENT ON COLUMN courses.course_planned_launch_date_text IS 'course planned launch date in text';
COMMENT ON COLUMN courses.course_header_image_s3_bucket IS 'S3 bucket for the header image, which appears as a banner on the CDP. If no header image exists, the site uses a version of the promo image instead.';
COMMENT ON COLUMN courses.course_header_image_s3_key IS 'The key corresponding to `course_header_image_s3_bucket`';
COMMENT ON TABLE course_item_programming_assignments IS 'For each course, provide the mapping between course items and versioned programming assignments.';
COMMENT ON COLUMN course_item_programming_assignments.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN course_item_programming_assignments.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be the same for the purposes of progress and grade computations. For example, if you complete item xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very different from item xxxxx in branch A.';
COMMENT ON COLUMN course_item_programming_assignments.programming_assignment_id IS 'This is a ''course_content_id'', and is versioned. (e.g ABC@1 is version 1)';
COMMENT ON TABLE peer_review_part_choices IS 'Answers to option-based review schema questions ("options" and "yesNo")';
COMMENT ON COLUMN peer_review_part_choices.peer_assignment_id IS 'The assignment that this answer applies to';
COMMENT ON COLUMN peer_review_part_choices.peer_assignment_review_schema_part_id IS 'The part of the review schema that this answer applies to';
COMMENT ON COLUMN peer_review_part_choices.peer_assignment_review_schema_part_option_id IS 'The answer';
COMMENT ON COLUMN peer_review_part_choices.peer_review_id IS 'The review that this answer is part of';
COMMENT ON TABLE assessment_types IS 'Description of assessment types';
COMMENT ON COLUMN assessment_types.assessment_type_id IS 'unique assessment type id';
COMMENT ON COLUMN assessment_types.assessment_type_desc IS 'description of each assessment type';
COMMENT ON TABLE peer_assignments IS 'Metadata of peer assignments';
COMMENT ON COLUMN peer_assignments.peer_assignment_id IS 'This is a ''course_content_id'', and is versioned. (e.g ABC@1 is version 1)';
COMMENT ON COLUMN peer_assignments.peer_assignment_base_id IS 'The unversioned id';
COMMENT ON COLUMN peer_assignments.peer_assignment_type IS 'The type ("standard", "graded", "closed")';
COMMENT ON COLUMN peer_assignments.peer_assignment_required_review_count IS 'The number of reviews a submitter needs to do (of others'' submissions) to get credit.';
COMMENT ON COLUMN peer_assignments.peer_assignment_passing_fraction IS 'Fraction of the maximum possible score that a submitter must achieve in order to pass. This only exists for assignments that generate scores';
COMMENT ON COLUMN peer_assignments.peer_assignment_required_reviewer_count_for_score IS 'The number of reviews a submission must receive to get a score.';
COMMENT ON COLUMN peer_assignments.peer_assignment_required_wait_for_score_ms IS 'Amount of time that must elapse since a submission has been submitted before it may have a score. This only exists for assignments that generate scores.
';
COMMENT ON COLUMN peer_assignments.peer_assignment_maximum_score IS 'Maximum score for this assignment. This is nullable because not all assignments generate scores.
';
COMMENT ON COLUMN peer_assignments.peer_assignment_update_ts IS 'When this version of the assignment was created';
COMMENT ON COLUMN peer_assignments.peer_assignment_is_mentor_graded IS 'No column description available';
COMMENT ON TABLE course_progress IS 'Contains a log of when and how a user progresses in one course item of a course, with one of two progress states: ''started'' or ''completed''';
COMMENT ON COLUMN course_progress.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN course_progress.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be the same for the purposes of progress and grade computations. For example, if you complete item xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very different from item xxxxx in branch A.';
COMMENT ON COLUMN course_progress.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital data.';
COMMENT ON COLUMN course_progress.course_progress_state_type_id IS 'value of 1 is the `started` state, where value of 2 is the `completed` state';
COMMENT ON COLUMN course_progress.course_progress_ts IS 'The timestamp for when a learner''s progress on a course item has changed. ';
COMMENT ON TABLE feedback_course_ratings IS 'Contains data for course ratings';
COMMENT ON COLUMN feedback_course_ratings.course_id IS 'Course id for the course receiving ratings';
COMMENT ON COLUMN feedback_course_ratings.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital feedback data.';
COMMENT ON COLUMN feedback_course_ratings.feedback_system IS 'Feedback system: STAR for course ratings';
COMMENT ON COLUMN feedback_course_ratings.feedback_rating IS 'Value of the rating. Should be 1-5 for active course ratings';
COMMENT ON COLUMN feedback_course_ratings.feedback_max_rating IS 'Maximum value of the rating: 5 for course ratings';
COMMENT ON COLUMN feedback_course_ratings.feedback_ts IS 'Timestamp when the feedback was left';
COMMENT ON TABLE discussion_course_forums IS 'The list of course forums.
Every course branch has one root forum.
Also, week and item forums are created based on the course material.';
COMMENT ON COLUMN discussion_course_forums.discussion_forum_id IS 'unique identifier for a forum';
COMMENT ON COLUMN discussion_course_forums.course_branch_id IS 'unique identifier for a course branch';
COMMENT ON COLUMN discussion_course_forums.discussion_course_forum_title IS 'Title of the forum';
COMMENT ON COLUMN discussion_course_forums.discussion_course_forum_description IS 'Forum description';
COMMENT ON COLUMN discussion_course_forums.discussion_course_forum_order IS 'The order in which the discussion forum, based on the weekly schedule of the course''s materials';
COMMENT ON TABLE course_branch_lessons IS 'Subsection of a single module, can be composed of multiple items in a course.';
COMMENT ON COLUMN course_branch_lessons.course_branch_id IS 'Each session is associated with a single branch. Learners enrolled in a session see the course contents associated with this branch.';
COMMENT ON COLUMN course_branch_lessons.course_lesson_id IS '5 character alphanumeric string identifying an individual lesson within a course. course_lesson_id need not be unique, but a course_lesson_id/course_id pair is unique.';
COMMENT ON COLUMN course_branch_lessons.course_module_id IS '5 character alphanumeric string identifying an individual module within a course. course_module_id need not be unique, but a course_module_id/course_id pair is unique.';
COMMENT ON COLUMN course_branch_lessons.course_branch_lesson_order IS 'The order of a lesson within a particular module, with "0" indicating the first lesson in a module. ';
COMMENT ON COLUMN course_branch_lessons.course_branch_lesson_name IS 'The name of a lesson, as seen in the learner view of the course. ';
COMMENT ON TABLE discussion_answer_flags IS 'records when a discussion answer is marked as resolved.';
COMMENT ON COLUMN discussion_answer_flags.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital discussions data.';
COMMENT ON COLUMN discussion_answer_flags.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN discussion_answer_flags.discussion_answer_id IS 'The id of an answer in the discussion forum. ';
COMMENT ON COLUMN discussion_answer_flags.discussion_answer_flag_active IS 'A learner may flag a discussion answer, and later mark that answer as resolved. If a flag is still active, the value of "discussion_answer_flag_active" will be t. If the report was marked as resolved, the value will be f.';
COMMENT ON COLUMN discussion_answer_flags.discussion_answer_flag_ts IS 'Indicates the time at which the discussion answer was flagged';
COMMENT ON TABLE course_branch_item_assessments IS 'For each course branch, provide the mapping between course branches and versioned assessments.';
COMMENT ON COLUMN course_branch_item_assessments.course_branch_id IS 'Each session is associated with a single branch. Learners enrolled in a session see the course contents associated with this branch.';
COMMENT ON COLUMN course_branch_item_assessments.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be the same for the purposes of progress and grade computations. For example, if you complete item xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very different from item xxxxx in branch A.';
COMMENT ON COLUMN course_branch_item_assessments.assessment_id IS 'Each quiz is assigned a unique id that is a combination of a base id and version. ';
COMMENT ON TABLE assessment_regex_pattern_flags IS '[No table description available]';
COMMENT ON COLUMN assessment_regex_pattern_flags.assessment_pattern_id IS 'No column description available';
COMMENT ON COLUMN assessment_regex_pattern_flags.assessment_pattern_flag_type_id IS 'ID for a pattern flag type';
COMMENT ON TABLE course_progress_state_types IS 'A mapping table from ids to descriptions of the different course progress states, such as 1 meaning "started".';
COMMENT ON COLUMN course_progress_state_types.course_progress_state_type_id IS 'There are different possible progress state types, each state is given a number. ';
COMMENT ON COLUMN course_progress_state_types.course_progress_state_type_desc IS 'The description of each possible progress state type.
Currently 0 (not started), 1 (started), and 2 (completed). ';
COMMENT ON TABLE assessment_single_numeric_patterns IS 'Table that stores the single numeric pattern type questions.';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_question_id IS 'The id that uniquely identifies a question in an assessment';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_pattern_id IS 'No column description available';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_pattern_type_id IS 'No column description available';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_pattern_value IS 'No column description available';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_pattern_max IS 'No column description available';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_pattern_min IS 'No column description available';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_pattern_include_min IS 'No column description available';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_pattern_include_max IS 'No column description available';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_pattern_feedback IS 'The text that is displayed to learners upon answering a question that matches the pattern.';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_pattern_correct IS 'For regular expression type questions, instructors can insert both correct and incorrect answer patterns in order to provide learners with tailored feedback based on common solutions or misconceptions. This field indicates whether the pattern was one that corresponded to a correct solution (t) or an incorrect solution (f).';
COMMENT ON TABLE specializations_courses IS 'This table contains the mapping between specializations and courses';
COMMENT ON COLUMN specializations_courses.specialization_id IS 'Unique ID for a Coursera specialization. Non-base specialization versions begin with a prefix of ''child~''';
COMMENT ON COLUMN specializations_courses.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN specializations_courses.current_dt IS 'Date of file import. Can be used to identify changes in course-specialization mapping from one day to another';
COMMENT ON TABLE discussion_answer_votes IS 'records when a discussion answer was upvoted or revoked.';
COMMENT ON COLUMN discussion_answer_votes.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital discussions data.';
COMMENT ON COLUMN discussion_answer_votes.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN discussion_answer_votes.discussion_answer_id IS 'The discussion answer to which the vote was applied';
COMMENT ON COLUMN discussion_answer_votes.discussion_answer_vote_value IS 'Discussion answers can only be upvoted on the Phoenix platform; there is no such thing as a downvoting an answer. Upon upvoting, the value of this column is 1. However, if a user "revokes" their upvote, the value will instead be 0.';
COMMENT ON COLUMN discussion_answer_votes.discussion_answer_vote_ts IS 'The timestamp of when the vote was applied';
COMMENT ON TABLE programming_submission_part_grid_submissions IS 'Submissions to asynchronously graded questions';
COMMENT ON COLUMN programming_submission_part_grid_submissions.programming_assignment_id IS 'The universal id of the programming assignment.';
COMMENT ON COLUMN programming_submission_part_grid_submissions.programming_assignment_submission_schema_part_id IS 'The universal part id the programming assignment.';
COMMENT ON COLUMN programming_submission_part_grid_submissions.programming_submission_id IS 'The universal submission id.';
COMMENT ON COLUMN programming_submission_part_grid_submissions.programming_submission_part_grid_submission_url IS 'The url of the grid submission.';
COMMENT ON COLUMN programming_submission_part_grid_submissions.programming_submission_part_grid_submission_custom_cykkte IS 'The extra grid grader parameter. Name shortened from ''programming_submission_part_grid_submission_custom_grader_parameters'' for compatibility.';
COMMENT ON TABLE course_branch_item_peer_assignments IS 'For each course, provide the mapping between course branches and versioned peer assignments.';
COMMENT ON COLUMN course_branch_item_peer_assignments.course_branch_id IS 'Each session is associated with a single branch. Learners enrolled in a session see the course contents associated with this branch.';
COMMENT ON COLUMN course_branch_item_peer_assignments.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be the same for the purposes of progress and grade computations. For example, if you complete item xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very different from item xxxxx in branch A.';
COMMENT ON COLUMN course_branch_item_peer_assignments.peer_assignment_id IS 'This is a ''course_content_id'', and is versioned. (e.g ABC@1 is version 1)';
COMMENT ON TABLE assessment_mcq_questions IS 'multiple-choice assessment questions';
COMMENT ON COLUMN assessment_mcq_questions.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_mcq_questions.assessment_question_shuffle_options IS 'Answer options can either be displayed to the learner in the order in which they are listed within the authoring interface, or in a random order each time the learner attempts the assessment. If the answer option ordering is randomized, "assessment_question_shuffle_options" will be "t," and "f" otherwise';
COMMENT ON TABLE assessment_response_options IS 'learner responses to assessments';
COMMENT ON COLUMN assessment_response_options.assessment_response_id IS 'Unique id for each of users'' responses to an assessment.';
COMMENT ON COLUMN assessment_response_options.assessment_option_id IS 'unique choice option id, linking to the assessment_option_id in the assessment_options table';
COMMENT ON COLUMN assessment_response_options.assessment_response_correct IS 'Whether the response was correct';
COMMENT ON COLUMN assessment_response_options.assessment_response_feedback IS 'Feedback shown to the user on interacting with the assessment.';
COMMENT ON COLUMN assessment_response_options.assessment_response_selected IS 'Whether this response option was selected';
COMMENT ON TABLE assessment_question_types IS 'Description of the types of quiz questions';
COMMENT ON COLUMN assessment_question_types.assessment_question_type_id IS 'A numerical identifier correspnding to each of the assessment question types described by the assessment_question_type_desc field';
COMMENT ON COLUMN assessment_question_types.assessment_question_type_desc IS 'Our assessments system defines several different quiz question types, some of which are limited only to in-video quiz questions embedded within videos. The table description is a text identifier which corresponds to the following items: regex (Regular Expression), math expression (Math Expression), mcq (Multiple Choice Question), single numeric (Numeric match), checkbox (Checkbox), text exact match (Text match), reflect (Ungraded text entry question), mcqReflect (Multiple Choice Question - Reflective / Ungraded), checkboxReflect (Checkbox - Reflective / Ungraded), checkbox poll (Checkbox - Poll question - Lecture only), poll (Multiple Choice Question - Poll question - Lecture only), continue (Pause and reflect question - Lecture only)';
COMMENT ON TABLE feedback_item_ratings IS 'Contains data for item-level ratings';
COMMENT ON COLUMN feedback_item_ratings.course_id IS 'Course id for the course receiving feedback';
COMMENT ON COLUMN feedback_item_ratings.course_item_id IS 'Item id for the item being rated';
COMMENT ON COLUMN feedback_item_ratings.feedback_unit_id IS 'Detailed info for the element being rated. Will generally be a versioned id for item-level feedback';
COMMENT ON COLUMN feedback_item_ratings.feedback_unit_type IS 'The type of the element being rated. Should be an item type';
COMMENT ON COLUMN feedback_item_ratings.feedback_system IS 'Feedback system: LIKE_OR_DISLIKE for item-level ratings';
COMMENT ON COLUMN feedback_item_ratings.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital feedback data.';
COMMENT ON COLUMN feedback_item_ratings.feedback_rating IS 'Value of the rating. Should be 0 or 1 for item-level ratings';
COMMENT ON COLUMN feedback_item_ratings.feedback_max_rating IS 'Maximum value of the rating: 1 for item-level ratings';
COMMENT ON COLUMN feedback_item_ratings.detailed_context IS 'Contains information on the element and its parents, usually including versioning information';
COMMENT ON COLUMN feedback_item_ratings.feedback_ts IS 'Timestamp when the feedback was left';
COMMENT ON TABLE course_branch_grades IS 'This table provides the grading event of when the user reached his or her highest grade in one course branch.
Also provides the passing/not-passing state for each user and course branch.';
COMMENT ON COLUMN course_branch_grades.course_branch_id IS 'Each session is associated with a single branch. Learners enrolled in a session see the course contents associated with this branch.';
COMMENT ON COLUMN course_branch_grades.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital data.';
COMMENT ON COLUMN course_branch_grades.course_branch_grade_ts IS 'The timestamp for when a learner''s branch grade has changed. This occurs everytime a grading event takes place. ';
COMMENT ON COLUMN course_branch_grades.course_passing_state_id IS 'A learner can be in one of four "states" with respect to passing a branch: 0 means they have started the branch but not passed, 1 means they have completed the branch without identity verification, 2 means they''ve completed the branch with identity verification, 3 means the branch is not passable.';
COMMENT ON COLUMN course_branch_grades.course_branch_grade_overall_passed_items IS 'The number of items in the branch that the learner has passed.';
COMMENT ON COLUMN course_branch_grades.course_branch_grade_overall IS 'The grade a learner has in the branch, according to the instructor-set grading policy, based on passed items. ';
COMMENT ON COLUMN course_branch_grades.course_branch_grade_verified_passed_items IS 'The number of items in the branch that the learner has passed and verified their identity. ';
COMMENT ON COLUMN course_branch_grades.course_branch_grade_verified IS 'The grade a learner has in the branch, according to the instructor-set grading policy, based on items that have been passed and for which the learner''s identity has been verified. ';
COMMENT ON TABLE organizations IS 'Each row is an organization, with details such as name, country and industry for every organization enrolling in at least one of your courses.
Those organizations whose names cannot be exposed have their names as ''Anonymous Organizations''';
COMMENT ON COLUMN organizations.university_id IS 'Unique ID for content partner';
COMMENT ON COLUMN organizations.organization_id IS 'Unique ID of the organization';
COMMENT ON COLUMN organizations.organization_name IS 'The name of the organization';
COMMENT ON COLUMN organizations.organization_country_name IS 'Country of the organization (Headquarters)';
COMMENT ON COLUMN organizations.organization_industry IS 'Industry of the organization';
COMMENT ON TABLE ecb_engines IS 'Executable code block engines handle evaluation requests for a single language.';
COMMENT ON COLUMN ecb_engines.ecb_engine_id IS 'Unique, versioned id for the engine.';
COMMENT ON COLUMN ecb_engines.ecb_engine_name IS 'Human-readable name for the engine.';
COMMENT ON COLUMN ecb_engines.ecb_engine_updated_ts IS 'Time when the engine definition was updated. ';
COMMENT ON COLUMN ecb_engines.ecb_engine_memory_limit_mb IS 'Maximum memory available to execution requests using the engine, in MB.';
COMMENT ON COLUMN ecb_engines.ecb_engine_timeout_ms IS 'Maximum time allowed for execution requests made to the engine, in ms.';
COMMENT ON COLUMN ecb_engines.ecb_engine_disk_limit_mb IS 'Maximum disk space available to execution requests using the engine, in MB.';
COMMENT ON COLUMN ecb_engines.ecb_engine_cpu_limit IS 'CPU shares available to execution requests using the engine. 1024 corresponds to one virtual CPU.';
COMMENT ON TABLE on_demand_sessions IS 'Contains sessions info (e.g start and end dates) and the Course Versioning used on the Phoenix platform';
COMMENT ON COLUMN on_demand_sessions.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN on_demand_sessions.on_demand_session_id IS 'unique identifer for a course''s session on the Phoenix platform';
COMMENT ON COLUMN on_demand_sessions.on_demand_sessions_start_ts IS 'The start date of a Phoenix session';
COMMENT ON COLUMN on_demand_sessions.on_demand_sessions_end_ts IS 'The end date of a Phoenix session';
COMMENT ON COLUMN on_demand_sessions.on_demand_sessions_enrollment_end_ts IS 'The end date of the enrollment period of a Phoenix session';
COMMENT ON COLUMN on_demand_sessions.course_branch_id IS 'Each session is associated with a single branch. Learners enrolled in a session see the course contents associated with this branch.';
COMMENT ON TABLE peer_submission_part_free_responses IS 'Answers to the submission schema questions, for the "plainText" and "richText" submission schema part types.';
COMMENT ON COLUMN peer_submission_part_free_responses.peer_assignment_id IS 'The assignment that this answer applies to';
COMMENT ON COLUMN peer_submission_part_free_responses.peer_assignment_submission_schema_part_id IS 'The part of the submission schema that this answer applies to';
COMMENT ON COLUMN peer_submission_part_free_responses.peer_submission_id IS 'The submission that this answer is part of';
COMMENT ON COLUMN peer_submission_part_free_responses.peer_submission_part_free_response_text IS 'The contents of the answer';
COMMENT ON TABLE discussion_questions IS 'For each course''s discussion forums, contains the list of the questions, with its title, content, and author.';
COMMENT ON COLUMN discussion_questions.discussion_question_id IS 'The id of the question in the discussion forum.';
COMMENT ON COLUMN discussion_questions.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital discussions data.';
COMMENT ON COLUMN discussion_questions.discussion_question_title IS 'The title of the question.';
COMMENT ON COLUMN discussion_questions.discussion_question_details IS 'The content of the question';
COMMENT ON COLUMN discussion_questions.discussion_question_context_type IS 'The context of this discussion question, e.g. "module"';
COMMENT ON COLUMN discussion_questions.course_id IS 'The (on-demand) course in which this question exists.';
COMMENT ON COLUMN discussion_questions.course_module_id IS '5 character alphanumeric string identifying an individual module within a course. course_module_id need not be unique, but a course_module_id/course_id pair is unique.';
COMMENT ON COLUMN discussion_questions.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be the same for the purposes of progress and grade computations. For example, if you complete item xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very different from item xxxxx in branch A.';
COMMENT ON COLUMN discussion_questions.discussion_forum_id IS 'unique identifier for a forum';
COMMENT ON COLUMN discussion_questions.country_cd IS ' The country context in which the question was posted, only applicable to country-specific questions.';
COMMENT ON COLUMN discussion_questions.group_id IS 'No column description available';
COMMENT ON COLUMN discussion_questions.discussion_question_created_ts IS 'The timestamp of when the discussion question was created. ';
COMMENT ON COLUMN discussion_questions.discussion_question_updated_ts IS 'The timestamp of when the discussion question was updated.';
COMMENT ON TABLE course_branch_item_programming_assignments IS 'For each course, provide the mapping between course branches and versioned programming assignments.';
COMMENT ON COLUMN course_branch_item_programming_assignments.course_branch_id IS 'Each session is associated with a single branch. Learners enrolled in a session see the course contents associated with this branch.';
COMMENT ON COLUMN course_branch_item_programming_assignments.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be the same for the purposes of progress and grade computations. For example, if you complete item xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very different from item xxxxx in branch A.';
COMMENT ON COLUMN course_branch_item_programming_assignments.programming_assignment_id IS 'This is a ''course_content_id'', and is versioned. (e.g ABC@1 is version 1)';
COMMENT ON TABLE eitdigital_course_user_ids IS 'Encrypted user id mapping table. Use this table to connect learner data from exports, which identifies eitdigital learners using eitdigital_user_id, to course-scoped data from external surveys.      ';
COMMENT ON COLUMN eitdigital_course_user_ids.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital data.';
COMMENT ON COLUMN eitdigital_course_user_ids.iot_architecture_user_id IS 'Encrypted Coursera user id for iot-architecture data.';
COMMENT ON COLUMN eitdigital_course_user_ids.quantitative_model_checking_user_id IS 'Encrypted Coursera user id for quantitative-model-checking data.';
COMMENT ON COLUMN eitdigital_course_user_ids.testeit_user_id IS 'Encrypted Coursera user id for testeit data.';
COMMENT ON COLUMN eitdigital_course_user_ids.web_data_user_id IS 'Encrypted Coursera user id for web-data data.';
COMMENT ON COLUMN eitdigital_course_user_ids.blockchain_professionals_user_id IS 'Encrypted Coursera user id for blockchain-professionals data.';
COMMENT ON COLUMN eitdigital_course_user_ids.data_science_geometric_algorithms_user_id IS 'Encrypted Coursera user id for data-science-geometric-algorithms data.';
COMMENT ON COLUMN eitdigital_course_user_ids.mining_medical_data_user_id IS 'Encrypted Coursera user id for mining-medical-data data.';
COMMENT ON COLUMN eitdigital_course_user_ids.automata_system_validation_user_id IS 'Encrypted Coursera user id for automata-system-validation data.';
COMMENT ON COLUMN eitdigital_course_user_ids.git_github_user_id IS 'Encrypted Coursera user id for git-github data.';
COMMENT ON COLUMN eitdigital_course_user_ids.system_validation_modal_formulas_user_id IS 'Encrypted Coursera user id for system-validation-modal-formulas data.';
COMMENT ON COLUMN eitdigital_course_user_ids.computer_architecture_fundamentals_user_id IS 'Encrypted Coursera user id for computer-architecture-fundamentals data.';
COMMENT ON COLUMN eitdigital_course_user_ids.iot_connectivity_security_user_id IS 'Encrypted Coursera user id for iot-connectivity-security data.';
COMMENT ON COLUMN eitdigital_course_user_ids.iot_devices_user_id IS 'Encrypted Coursera user id for iot-devices data.';
COMMENT ON COLUMN eitdigital_course_user_ids.automated_reasoning_sat_user_id IS 'Encrypted Coursera user id for automated-reasoning-sat data.';
COMMENT ON COLUMN eitdigital_course_user_ids.embedded_systems_security_first_course_1_user_id IS 'Encrypted Coursera user id for embedded-systems-security-first-course-1 data.';
COMMENT ON COLUMN eitdigital_course_user_ids.formal_methods_embedded_systems_first_course_1_user_id IS 'Encrypted Coursera user id for formal-methods-embedded-systems-first-course-1 data.';
COMMENT ON COLUMN eitdigital_course_user_ids.embedded_operating_system_user_id IS 'Encrypted Coursera user id for embedded-operating-system data.';
COMMENT ON COLUMN eitdigital_course_user_ids.capstone_recommender_systems_user_id IS 'Encrypted Coursera user id for capstone-recommender-systems data.';
COMMENT ON COLUMN eitdigital_course_user_ids.marketing_strategy_entrepreneurs_user_id IS 'Encrypted Coursera user id for marketing-strategy-entrepreneurs data.';
COMMENT ON COLUMN eitdigital_course_user_ids.programming_java_introduction_user_id IS 'Encrypted Coursera user id for programming-java-introduction data.';
COMMENT ON COLUMN eitdigital_course_user_ids.autonomous_runway_detection_user_id IS 'Encrypted Coursera user id for autonomous-runway-detection data.';
COMMENT ON COLUMN eitdigital_course_user_ids.automated_reasoning_first_course_1_user_id IS 'Encrypted Coursera user id for automated-reasoning-first-course-1 data.';
COMMENT ON COLUMN eitdigital_course_user_ids.system_validation_software_protocols_user_id IS 'Encrypted Coursera user id for system-validation-software-protocols data.';
COMMENT ON COLUMN eitdigital_course_user_ids.design_embedded_controller_user_id IS 'Encrypted Coursera user id for design-embedded-controller data.';
COMMENT ON COLUMN eitdigital_course_user_ids.saforiot_deleted_user_id IS 'Encrypted Coursera user id for saforiot-deleted data.';
COMMENT ON COLUMN eitdigital_course_user_ids.system_validation_behavior_user_id IS 'Encrypted Coursera user id for system-validation-behavior data.';
COMMENT ON COLUMN eitdigital_course_user_ids.binary_decision_diagrams_automated_reasoning_user_id IS 'Encrypted Coursera user id for binary-decision-diagrams-automated-reasoning data.';
COMMENT ON COLUMN eitdigital_course_user_ids.real_time_systems_user_id IS 'Encrypted Coursera user id for real-time-systems data.';
COMMENT ON COLUMN eitdigital_course_user_ids.capstone_formal_methods_user_id IS 'Encrypted Coursera user id for capstone-formal-methods data.';
COMMENT ON COLUMN eitdigital_course_user_ids.parallel_processing_user_id IS 'Encrypted Coursera user id for parallel-processing data.';
COMMENT ON COLUMN eitdigital_course_user_ids.high_performance_embedded_architecture_memory_design_user_id IS 'Encrypted Coursera user id for high-performance-embedded-architecture-memory-design data.';
COMMENT ON COLUMN eitdigital_course_user_ids.iot_architeting_smart_devices_first_course_1_user_id IS 'Encrypted Coursera user id for iot-architeting-smart-devices-first-course-1 data.';
COMMENT ON COLUMN eitdigital_course_user_ids.mining_data_first_course_1_user_id IS 'Encrypted Coursera user id for mining-data-first-course-1 data.';
COMMENT ON COLUMN eitdigital_course_user_ids.digital_twins_user_id IS 'Encrypted Coursera user id for digital-twins data.';
COMMENT ON COLUMN eitdigital_course_user_ids.io_efficient_algorithms_user_id IS 'Encrypted Coursera user id for io-efficient-algorithms data.';
COMMENT ON COLUMN eitdigital_course_user_ids.quantitative_formal_modelling_first_course_1_user_id IS 'Encrypted Coursera user id for quantitative-formal-modelling-first-course-1 data.';
COMMENT ON COLUMN eitdigital_course_user_ids.capstone_value_creation_innovation_user_id IS 'Encrypted Coursera user id for capstone-value-creation-innovation data.';
COMMENT ON COLUMN eitdigital_course_user_ids.standardisation_user_id IS 'Encrypted Coursera user id for standardisation data.';
COMMENT ON COLUMN eitdigital_course_user_ids.develop_smart_iot_devices_user_id IS 'Encrypted Coursera user id for develop-smart-iot-devices data.';
COMMENT ON COLUMN eitdigital_course_user_ids.advanced_recommender_systems_user_id IS 'Encrypted Coursera user id for advanced-recommender-systems data.';
COMMENT ON COLUMN eitdigital_course_user_ids.impact_of_technology_user_id IS 'Encrypted Coursera user id for impact-of-technology data.';
COMMENT ON COLUMN eitdigital_course_user_ids.open_innovation_entrepreneurship_user_id IS 'Encrypted Coursera user id for open-innovation-entrepreneurship data.';
COMMENT ON COLUMN eitdigital_course_user_ids.embedded_computer_architecture_capstone_user_id IS 'Encrypted Coursera user id for embedded-computer-architecture-capstone data.';
COMMENT ON COLUMN eitdigital_course_user_ids.multicore_architectures_user_id IS 'Encrypted Coursera user id for multicore-architectures data.';
COMMENT ON COLUMN eitdigital_course_user_ids.quantitative_formal_modeling_1_user_id IS 'Encrypted Coursera user id for quantitative-formal-modeling-1 data.';
COMMENT ON COLUMN eitdigital_course_user_ids.basic_recommender_systems_user_id IS 'Encrypted Coursera user id for basic-recommender-systems data.';
COMMENT ON COLUMN eitdigital_course_user_ids.design_thinking_entrepreneurship_user_id IS 'Encrypted Coursera user id for design-thinking-entrepreneurship data.';
COMMENT ON COLUMN eitdigital_course_user_ids.iot_software_architecture_user_id IS 'Encrypted Coursera user id for iot-software-architecture data.';
COMMENT ON COLUMN eitdigital_course_user_ids.privacy_user_id IS 'Encrypted Coursera user id for privacy data.';
COMMENT ON COLUMN eitdigital_course_user_ids.data_mining_user_id IS 'Encrypted Coursera user id for data-mining data.';
COMMENT ON COLUMN eitdigital_course_user_ids.approximation_algorithms_user_id IS 'Encrypted Coursera user id for approximation-algorithms data.';
COMMENT ON TABLE ecb_evaluation_requests IS 'Executable code block evaluations requested by learners.';
COMMENT ON COLUMN ecb_evaluation_requests.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN ecb_evaluation_requests.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be the same for the purposes of progress and grade computations. For example, if you complete item xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very different from item xxxxx in branch A.';
COMMENT ON COLUMN ecb_evaluation_requests.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital ecb data.';
COMMENT ON COLUMN ecb_evaluation_requests.ecb_evaluator_id IS 'Unique id for the evaluator used to execute the learner''s request.';
COMMENT ON COLUMN ecb_evaluation_requests.ecb_evaluation_requested_ts IS 'Date and time when the user executed their request.';
COMMENT ON COLUMN ecb_evaluation_requests.ecb_evaluation_duration_ms IS 'Time, in milliseconds, between learner request and system response. ';
COMMENT ON COLUMN ecb_evaluation_requests.ecb_evaluation_expression IS 'Code expression submitted by the user.';
COMMENT ON COLUMN ecb_evaluation_requests.ecb_evaluation_result IS 'JSON-formatted evaluation result. ';
COMMENT ON COLUMN ecb_evaluation_requests.ecb_evaluation_errors IS 'JSON-formatted list of system errors, if applicable. ';
COMMENT ON TABLE course_branch_items IS 'A single content item in a class such as lecture, quiz or peer review assignment.';
COMMENT ON COLUMN course_branch_items.course_branch_id IS 'Each session is associated with a single branch. Learners enrolled in a session see the course contents associated with this branch.';
COMMENT ON COLUMN course_branch_items.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be the same for the purposes of progress and grade computations. For example, if you complete item xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very different from item xxxxx in branch A.';
COMMENT ON COLUMN course_branch_items.course_lesson_id IS '5 character alphanumeric string identifying an individual lesson within a course. course_lesson_id need not be unique, but a course_lesson_id/course_id pair is unique.';
COMMENT ON COLUMN course_branch_items.course_branch_item_order IS 'The order of an item within a particular lesson, with "0" indicating the first item in the lesson.';
COMMENT ON COLUMN course_branch_items.course_item_type_id IS 'There are many different types of of items that make up a course. Each item is given an item_type_id for ease of identification. ';
COMMENT ON COLUMN course_branch_items.course_branch_item_name IS 'The name of an item, as seen in the learner view of the course.';
COMMENT ON COLUMN course_branch_items.course_branch_item_optional IS 'A course item can either be optional ("true", which means a learner does not need to pass it to complete the course) or not ("false", which means the learner must pass it to complete the course.';
COMMENT ON COLUMN course_branch_items.atom_id IS 'No column description available';
COMMENT ON COLUMN course_branch_items.atom_version_id IS 'No column description available';
COMMENT ON COLUMN course_branch_items.course_branch_atom_is_frozen IS 'No column description available';
COMMENT ON TABLE assessment_checkbox_reflect_questions IS 'Information of checkbox(Reflective / Ungraded) quiz questions';
COMMENT ON COLUMN assessment_checkbox_reflect_questions.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_checkbox_reflect_questions.assessment_question_shuffle_options IS 'Answer options can either be displayed to the learner in the order in which they are listed within the authoring interface, or in a random order each time the learner attempts the assessment. If the answer option ordering is randomized, "assessment_question_shuffle_options" will be "t," and "f" otherwise';
COMMENT ON TABLE notebook_workspace_launchers IS '[No table description available]';
COMMENT ON COLUMN notebook_workspace_launchers.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN notebook_workspace_launchers.course_branch_id IS 'Each session is associated with a single branch. Learners enrolled in a session see the course contents associated with this branch.';
COMMENT ON COLUMN notebook_workspace_launchers.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be the same for the purposes of progress and grade computations. For example, if you complete item xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very different from item xxxxx in branch A.';
COMMENT ON COLUMN notebook_workspace_launchers.notebook_workspace_launcher_id IS 'No column description available';
COMMENT ON COLUMN notebook_workspace_launchers.notebook_workspace_launch_path IS 'No column description available';
COMMENT ON COLUMN notebook_workspace_launchers.notebook_workspace_template_base_id IS 'No column description available';
COMMENT ON TABLE peer_comments IS 'Peer comments on submissions';
COMMENT ON COLUMN peer_comments.peer_comment_id IS 'primary key';
COMMENT ON COLUMN peer_comments.peer_submission_id IS 'The submission that this comment is for';
COMMENT ON COLUMN peer_comments.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital peer_assignments data.';
COMMENT ON COLUMN peer_comments.peer_comment_created_ts IS 'The time when the comment was created. The comment never changes after creation';
COMMENT ON COLUMN peer_comments.peer_comment_text IS 'The text of the comment';
COMMENT ON TABLE course_item_passing_states IS 'Each item in a course can be in one of three "states" with respect a learner passing the item.';
COMMENT ON COLUMN course_item_passing_states.course_item_passing_state_id IS 'Each item in a course can be in one of three "states" with respect a learner passing the item.  ';
COMMENT ON COLUMN course_item_passing_states.course_item_passing_state_desc IS '0 means the learner has not passed it, 1 means the learner has passed it but not verified their identity, and 2 means the learner has passed it and verified their identity.';
COMMENT ON TABLE assessment_text_exact_match_patterns IS '[No table description available]';
COMMENT ON COLUMN assessment_text_exact_match_patterns.assessment_question_id IS 'The id that uniquely identifies a question in an assessment';
COMMENT ON COLUMN assessment_text_exact_match_patterns.assessment_pattern_id IS 'No column description available';
COMMENT ON COLUMN assessment_text_exact_match_patterns.assessment_pattern_display IS 'The JSON blob containing the question prompt. This is written in a custom Coursera markup language. The actual prompt text is encapsulated within key named "value."';
COMMENT ON COLUMN assessment_text_exact_match_patterns.assessment_pattern_feedback IS 'The text that is displayed to learners upon answering a question that matches the pattern.';
COMMENT ON COLUMN assessment_text_exact_match_patterns.assessment_pattern_correct IS 'For regular expression type questions, instructors can insert both correct and incorrect answer patterns in order to provide learners with tailored feedback based on common solutions or misconceptions. This field indicates whether the pattern was one that corresponded to a correct solution (t) or an incorrect solution (f).';
COMMENT ON TABLE organization_enrollments IS 'Each row is an organization enrollment';
COMMENT ON COLUMN organization_enrollments.university_id IS 'Unique ID for content partner';
COMMENT ON COLUMN organization_enrollments.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital data.';
COMMENT ON COLUMN organization_enrollments.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN organization_enrollments.organization_id IS 'Unique ID of the organization';
COMMENT ON COLUMN organization_enrollments.organization_enrollment_ts IS 'The timestamp at which the enrollment became an organization enrollment for the first time';
COMMENT ON COLUMN organization_enrollments.organization_unenrollment_ts IS 'The latest timestamp when the enrollment unenrolled from the course as part of an organization';
COMMENT ON COLUMN organization_enrollments.organization_completion_ts IS 'The first timestamp at which the enrollment completed the course by completing all required assesements';
COMMENT ON TABLE programming_submission_parts IS 'Information of learner submissions to individual parts of a programming assignment';
COMMENT ON COLUMN programming_submission_parts.programming_assignment_id IS 'The universal id of the programming assignment.';
COMMENT ON COLUMN programming_submission_parts.programming_assignment_submission_schema_part_id IS 'The universal part id of the programming assignment.';
COMMENT ON COLUMN programming_submission_parts.programming_submission_id IS 'The universal submission id. ';
COMMENT ON COLUMN programming_submission_parts.programming_submission_part_type IS 'Type("multipart")';
COMMENT ON TABLE course_item_types IS 'There are many different types of of items that make up a course. Each item is given an item_type_id for ease of identification.';
COMMENT ON COLUMN course_item_types.course_item_type_id IS 'There are many different types of of items that make up a course. Each item is given an item_type_id for ease of identification. ';
COMMENT ON COLUMN course_item_types.course_item_type_desc IS 'The description attempts to describe the item in a few words (for example, "graded programming" or "exam"). ';
COMMENT ON COLUMN course_item_types.course_item_type_category IS 'There are a variety of different categories that course items fall into, currently: lecture, supplemental item (ie, reading), quiz, peer review, and programming. Within each of these categories, there is the potential to have various item types, which allow for different handling of the items (for example, formative vs summative assignments and open vs closed peer reviews).';
COMMENT ON COLUMN course_item_types.course_item_type_graded IS 'An item can be either graded ("true", which means it is required that a learner pass the item to pass the course) or not ("false", which means it is either an assessment that allows the learner to practice their skills, such as a practice quiz, or an item that provides information, such as a lecture or reading, regardless it is an optional item). ';
COMMENT ON COLUMN course_item_types.atom_content_type_id IS 'No column description available';
COMMENT ON TABLE programming_assignment_submission_schema_parts IS 'Information of individual parts of a programming assignment';
COMMENT ON COLUMN programming_assignment_submission_schema_parts.programming_assignment_id IS 'Assignment that this programming schema part lives in.';
COMMENT ON COLUMN programming_assignment_submission_schema_parts.programming_assignment_submission_schema_part_id IS 'This part''s id within the assignment.';
COMMENT ON COLUMN programming_assignment_submission_schema_parts.programming_assignment_submission_schema_part_title IS 'Name of the submission.';
COMMENT ON COLUMN programming_assignment_submission_schema_parts.programming_assignment_submission_schema_part_type IS 'The type ( "grid", "numeric", "regex")';
COMMENT ON COLUMN programming_assignment_submission_schema_parts.programming_assignment_submission_schema_part_order IS 'The order within the assignment (lowest comes first).';
COMMENT ON COLUMN programming_assignment_submission_schema_parts.programming_assignment_submission_schema_part_max_score IS 'Max score of the part.';
COMMENT ON COLUMN programming_assignment_submission_schema_parts.programming_assignment_submission_schema_part_is_optional IS 'Whether this part is optional or not.';
COMMENT ON COLUMN programming_assignment_submission_schema_parts.programming_assignment_submission_schema_part_xacgt8 IS 'The internal authoring version of the part, only used by authoring tools. Name shortened from ''programming_assignment_submission_schema_part_authoring_version'' for compatibility.';
COMMENT ON COLUMN programming_assignment_submission_schema_parts.programming_assignment_submission_schema_default_g663i6 IS 'The default incorrect feedback of a submission. Name shortened from ''programming_assignment_submission_schema_default_incorrect_feedback'' for compatibility.';
COMMENT ON TABLE course_items IS '(Deprecated. Please use prod.course_branch_items) A single content item in a course such as lecture, quiz or peer review assignment.
Note: For courses that uses the Course Versioning feature, please refer to the branch version of this table.';
COMMENT ON COLUMN course_items.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN course_items.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be the same for the purposes of progress and grade computations. For example, if you complete item xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very different from item xxxxx in branch A.';
COMMENT ON COLUMN course_items.course_lesson_id IS '5 character alphanumeric string identifying an individual lesson within a course. course_lesson_id need not be unique, but a course_lesson_id/course_id pair is unique.';
COMMENT ON COLUMN course_items.course_item_order IS 'The order of an item within a particular lesson, with "0" indicating the first item in the lesson.';
COMMENT ON COLUMN course_items.course_item_type_id IS 'There are many different types of of items that make up a course. Each item is given an item_type_id for ease of identification. ';
COMMENT ON COLUMN course_items.course_item_name IS 'The name of an item, as seen in the learner view of the course. ';
COMMENT ON COLUMN course_items.course_item_optional IS 'A course item can either be optional ("true", which means a learner does not need to pass it to complete the course) or not ("false", which means the learner must pass it to complete the course. ';
COMMENT ON TABLE assessments IS 'Table of all the assessments / quizzes.
[Copied from RDE guide]: Quizzes are automatically-graded assignments used to test learner knowledge in a course.
A quiz, referred to as an "assessment", could be a multiple-choice exam or an in-video quiz.
The assessment_types and assessment_question_types tables describe the type of quizzes and the type of questions, respectively.
The assessments table contains information for each quiz. The assessment_base_id field uniquely identifies the quiz within a course, and the assessment_id field is a combination of the assessment_base_id field and the assessment_version.
The assessment_questions table contains information for each question.
Here, the assessment_question_base_id field uniquely identifies a question within a course, and the assessment_question_id field is a combination of the assessment_question_base_id field and the assessment_question_version .';
COMMENT ON COLUMN assessments.assessment_id IS 'Each quiz is assigned a unique id that is a combination of a base id and version. ';
COMMENT ON COLUMN assessments.assessment_base_id IS 'Every quiz has a globally unique base id that is associated with a course.
';
COMMENT ON COLUMN assessments.assessment_version IS 'Whenever a quiz is updated the base id is kept the same but the version and assessment id are updated.';
COMMENT ON COLUMN assessments.assessment_type_id IS 'Type of assessment so that it can be joined with the corresponding type specific tables.';
COMMENT ON COLUMN assessments.assessment_update_ts IS 'Update timestamp for a change to the assessment.';
COMMENT ON COLUMN assessments.assessment_passing_fraction IS 'No column description available';
COMMENT ON TABLE programming_submission_part_grid_grading_statuses IS 'The status of grading of a submission to an asynchronously graded question';
COMMENT ON COLUMN programming_submission_part_grid_grading_statuses.programming_assignment_id IS 'The universal Id of the programming assignment.';
COMMENT ON COLUMN programming_submission_part_grid_grading_statuses.programming_assignment_submission_schema_part_id IS 'The universal part id of the programming assignment.';
COMMENT ON COLUMN programming_submission_part_grid_grading_statuses.programming_submission_id IS 'The universal submission Id. ';
COMMENT ON COLUMN programming_submission_part_grid_grading_statuses.programming_submission_part_grid_grading_status_pgrtf5 IS 'The grid executorRun Id. Only for internal use. Name shortened from ''programming_submission_part_grid_grading_status_executor_run_id'' for compatibility.';
COMMENT ON COLUMN programming_submission_part_grid_grading_statuses.programming_submission_part_grid_grading_status_x21exo IS 'The timestamp of the start of the part''s executor run. Name shortened from ''programming_submission_part_grid_grading_status_executor_run_start_ts'' for compatibility.';
COMMENT ON COLUMN programming_submission_part_grid_grading_statuses.programming_submission_part_grid_grading_status_jzmjz1 IS 'The current status of the executor run. Type("PENDING", "SUCCESSED", "FAILED"). Name shortened from ''programming_submission_part_grid_grading_status_executor_run_status'' for compatibility.';
COMMENT ON TABLE course_item_grades IS 'Grades of user for each of the items in the course';
COMMENT ON COLUMN course_item_grades.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN course_item_grades.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be the same for the purposes of progress and grade computations. For example, if you complete item xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very different from item xxxxx in branch A.';
COMMENT ON COLUMN course_item_grades.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital data.';
COMMENT ON COLUMN course_item_grades.course_item_grade_ts IS 'The timestamp for when an item was graded.';
COMMENT ON COLUMN course_item_grades.course_item_passing_state_id IS 'Each item in a course can be in one of three "states": 0 means the learner has not passed it, 1 means the learner has passed it but not verified their identity, and 2 means the learner has passed it and verified their identity.';
COMMENT ON COLUMN course_item_grades.course_item_grade_overall IS 'The grade a learner received on an item in the course.';
COMMENT ON COLUMN course_item_grades.course_item_grade_verified IS 'The grade a learner received on an item in the course, while also verifying their identity. If a learner verify''s their identity when competing an item, the "course_item_grade_overall" and "course_item_grade_verified" will be the same. If the learner does not verify their identity when completing an item, the achieved grade will be found in "course_item_grade_overall" while "course_item_grade_verified" will be "0".';
COMMENT ON COLUMN course_item_grades.course_item_grade_pending IS 'True if the learner identity is pending verification.
';
COMMENT ON TABLE on_demand_session_memberships IS 'For each course''s session, list the learners with the role
of ''member'' in that session and their start/end timestamps';
COMMENT ON COLUMN on_demand_session_memberships.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN on_demand_session_memberships.on_demand_session_id IS 'unique identifer for a course''s session on the Phoenix platform';
COMMENT ON COLUMN on_demand_session_memberships.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital data.';
COMMENT ON COLUMN on_demand_session_memberships.on_demand_sessions_membership_start_ts IS 'the datetime of when the learner became a ''member'' role for this course''s session';
COMMENT ON COLUMN on_demand_session_memberships.on_demand_sessions_membership_end_ts IS 'the datetime of when the learner ended his or her ''member'' role for this course''s session';
COMMENT ON TABLE demographics_question_types IS 'Stores question types for the demographics questions.';
COMMENT ON COLUMN demographics_question_types.question_type_id IS 'Indicates the type of answer required by the question: 0 (mulitple choice), 1 (integer), 2 (text).
';
COMMENT ON COLUMN demographics_question_types.question_type_desc IS 'Describes the answer required by each question type: 0 (multiple choice), 1 (integer), 2 (text).';
COMMENT ON TABLE assessment_actions IS 'This table stores the interactions of the user with the assessment.';
COMMENT ON COLUMN assessment_actions.assessment_action_id IS 'Unique id for each interaction of the user with the assessment.';
COMMENT ON COLUMN assessment_actions.assessment_action_base_id IS 'Base id for the assessment interaction that is used for creating new versions for interaction of the user - assessment pair.';
COMMENT ON COLUMN assessment_actions.assessment_id IS 'Each quiz is assigned a unique id that is a combination of a base id and version. ';
COMMENT ON COLUMN assessment_actions.assessment_scope_id IS 'Unique contexts in which the user can interact with the assessment.';
COMMENT ON COLUMN assessment_actions.assessment_scope_type_id IS 'the id that links the assessmnt_scope_types table to see the assessment scope type description';
COMMENT ON COLUMN assessment_actions.assessment_action_version IS 'Version of the assessment action';
COMMENT ON COLUMN assessment_actions.assessment_action_ts IS 'Timestamp of the users interaction with the assessment.
';
COMMENT ON COLUMN assessment_actions.assessment_action_start_ts IS 'Start timestamp of the users interaction with the assessment.
';
COMMENT ON COLUMN assessment_actions.guest_user_id IS 'ids of learners who did not log in';
COMMENT ON COLUMN assessment_actions.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital assessments data.';
COMMENT ON TABLE course_formative_quiz_grades IS 'Grades of a single user in each of the ungraded quizzes.';
COMMENT ON COLUMN course_formative_quiz_grades.course_id IS '22 character unique string identifying an individual course';
COMMENT ON COLUMN course_formative_quiz_grades.course_item_id IS '5 character alphanumeric string identifying an individual item within a course. course_item_id need not be unique, but a course_item_id/course_id pair is unique.';
COMMENT ON COLUMN course_formative_quiz_grades.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital data.';
COMMENT ON COLUMN course_formative_quiz_grades.course_quiz_grade_ts IS 'The timestamp for when a learner submitted a quiz and it was graded.
For each learner, there can be multiple timestamps for one quiz if the learner submits the quiz multiple times. ';
COMMENT ON COLUMN course_formative_quiz_grades.course_quiz_grade IS 'The number of points a learner scored on a particular submission of a quiz. For each learner, there can be multiple grades for one quiz if the learner submits the quiz multiple times. ';
COMMENT ON COLUMN course_formative_quiz_grades.course_quiz_max_grade IS 'Maximum possible points that can be scored on that quiz.';
COMMENT ON TABLE specializations IS 'This table gives information about specializations on Coursera.
Consists of base and non-base specialization versions.
SDP is short for Specialization Display Page.
s12n is short for Specialization.';
COMMENT ON COLUMN specializations.specialization_id IS 'Unique ID for a Coursera specialization. Non-base specialization versions begin with a prefix of ''child~''';
COMMENT ON COLUMN specializations.specialization_slug IS 'Short name that is used in the SDP''s URL
This column is not unique, since specializations versions share the same slug.';
COMMENT ON COLUMN specializations.specialization_name IS 'Display name that is shown in the SDP.
This column is not unique, since s12n versions share the same name';
COMMENT ON COLUMN specializations.specialization_display_page_launch_ts IS 'Timestamp on which the specialization''s display page was launched and became visible to the users
This column will stay populated with the s12n''s "birthdate" even if the s12n is unlaunched.';
COMMENT ON COLUMN specializations.sequence_branch_id IS 'The sequence of courses that are assigned to this table.';
COMMENT ON COLUMN specializations.specialization_version IS 'The version number of the specialization, based on when the version was first drafted';
COMMENT ON COLUMN specializations.base_specialization_id IS 'The base for this s12n version. When this s12n is a base version, it will equal
to specialization_id.
It should never contain a prefix of ''child~''.';
COMMENT ON COLUMN specializations.specialization_primary_domain IS 'Primary domain in display format, as set on the Specialization Authoring Page.
One primary domain per specialization. Can take these values:
[NULL]
Arts and Humanities
Business
Computer Science
Data Science
Language Learning
Life Sciences
Personal Development
Physical Science and Engineering
Social Sciences';
COMMENT ON COLUMN specializations.specialization_primary_subdomain IS 'Primary sub-domain in display format, as set on the Specialization Authoring Page.';
COMMENT ON TABLE assessment_regex_patterns IS '[No table description available]';
COMMENT ON COLUMN assessment_regex_patterns.assessment_question_id IS 'The id that uniquely identifies a question in an assessment';
COMMENT ON COLUMN assessment_regex_patterns.assessment_pattern_id IS 'No column description available';
COMMENT ON COLUMN assessment_regex_patterns.assessment_pattern_regex IS 'No column description available';
COMMENT ON COLUMN assessment_regex_patterns.assessment_pattern_feedback IS 'The text that is displayed to learners upon answering a question that matches the pattern.';
COMMENT ON COLUMN assessment_regex_patterns.assessment_pattern_correct IS 'For regular expression type questions, instructors can insert both correct and incorrect answer patterns in order to provide learners with tailored feedback based on common solutions or misconceptions. This field indicates whether the pattern was one that corresponded to a correct solution (t) or an incorrect solution (f).';
COMMENT ON TABLE discussion_question_followings IS 'records when discussion question is followed or unfollowed';
COMMENT ON COLUMN discussion_question_followings.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital discussions data.';
COMMENT ON COLUMN discussion_question_followings.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN discussion_question_followings.discussion_question_id IS 'The id of the discussion question';
COMMENT ON COLUMN discussion_question_followings.discussion_question_following_active IS 'true if following, false if not';
COMMENT ON COLUMN discussion_question_followings.discussion_question_following_ts IS 'timestamp of following status change';
COMMENT ON TABLE assessment_text_exact_match_questions IS 'Information of text exact match questions';
COMMENT ON COLUMN assessment_text_exact_match_questions.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_text_exact_match_questions.default_incorrect_feedback IS 'The default feedback to the learner should the learner answer the question incorrectly.';
COMMENT ON TABLE course_branches IS 'This table gives the course branch details along with course version names, as set by instructors on the course web page.';
COMMENT ON COLUMN course_branches.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN course_branches.course_branch_id IS 'Unique ID of the course branch. For original versions, the course_branch_id is the same as the course_id.';
COMMENT ON COLUMN course_branches.course_branch_changes_description IS 'A learner-facing summary of the changes in this branch.';
COMMENT ON COLUMN course_branches.authoring_course_branch_name IS 'Instructor-visible, free-form title of a course version.';
COMMENT ON COLUMN course_branches.authoring_course_branch_created_ts IS 'The timestamp when a branch was first created, either by the instructor or Courserian doing it on an instructor''s behalf. This does not represent the chronological order of when course branches went live to learners, because that is scheduled independently in sessions.';
COMMENT ON TABLE discussion_question_flags IS 'records when an discussion question is flagged as resolved';
COMMENT ON COLUMN discussion_question_flags.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital discussions data.';
COMMENT ON COLUMN discussion_question_flags.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN discussion_question_flags.discussion_question_id IS 'The id of the discussion question';
COMMENT ON COLUMN discussion_question_flags.discussion_question_flag_active IS 'whether or not the flag is active';
COMMENT ON COLUMN discussion_question_flags.discussion_question_flag_ts IS 'timestamp of flagging';
COMMENT ON TABLE demographics_answers IS 'Stores answers to the questions from the demographics survey and user intent questions.';
COMMENT ON COLUMN demographics_answers.question_id IS 'The indentifier for a particular question the learner answered. Can be used to connect demographics_answers, demographics_questions, and demographics_choices.';
COMMENT ON COLUMN demographics_answers.eitdigital_user_id IS 'Encrypted Coursera user id for eitdigital demographics data.';
COMMENT ON COLUMN demographics_answers.submission_ts IS 'The timestamp for when the learner submitted their demographic survey.';
COMMENT ON COLUMN demographics_answers.choice_id IS 'The identifier for the answer choice the learner selected for a particular question.';
COMMENT ON COLUMN demographics_answers.answer_int IS 'Demographics question answered by typing an interger (birth year, 4 digits). ';
COMMENT ON TABLE assessment_math_expression_questions IS 'math assessment questions and default text displayed to learners upon answering the questions incorrectly';
COMMENT ON COLUMN assessment_math_expression_questions.assessment_question_id IS 'the unique question id in an assessment';
COMMENT ON COLUMN assessment_math_expression_questions.default_incorrect_feedback IS 'The text that is displayed to learners upon answering a question incorrectly. In the authoring interface, this corresponds to the "Explain Incorrect Answer (optional)" field';
