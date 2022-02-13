from django.db import models


class WhiteBoxStudentsExaminationDataTransferAuditionTesting(models.Model):
    unique_student_enrollment_id = models.PositiveIntegerField(
        blank=False,
        null=False,
        db_index=True
    )
