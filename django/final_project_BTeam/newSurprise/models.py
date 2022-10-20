from django.db import models

from config.models import My_Ora

import pandas as pd
# Create your models here.

class Reviews_ora(My_Ora):
    def reviews_select(self):
        conn = self.get_conn()
        sql = 'select member_id, r_name, r_score from reviews'
        listv = pd.read_sql(sql, conn)
        return listv