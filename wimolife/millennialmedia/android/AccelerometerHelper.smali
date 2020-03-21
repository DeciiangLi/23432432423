.class Lcom/millennialmedia/android/AccelerometerHelper;
.super Ljava/lang/Object;
.source "AccelerometerHelper.java"


# static fields
.field private static accelerometerEventListener:Landroid/hardware/SensorEventListener;

.field private static interval:I

.field private static isEnabled:Z

.field private static listener:Lcom/millennialmedia/android/AccelerometerListener;

.field private static sensorManager:Landroid/hardware/SensorManager;

.field private static threshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lcom/millennialmedia/android/AccelerometerHelper;->threshold:F

    .line 22
    const/16 v0, 0x3e8

    sput v0, Lcom/millennialmedia/android/AccelerometerHelper;->interval:I

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/millennialmedia/android/AccelerometerHelper;->isEnabled:Z

    .line 165
    new-instance v0, Lcom/millennialmedia/android/AccelerometerHelper$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/AccelerometerHelper$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/AccelerometerHelper;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/millennialmedia/android/AccelerometerListener;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/millennialmedia/android/AccelerometerHelper;->listener:Lcom/millennialmedia/android/AccelerometerListener;

    return-object v0
.end method

.method static synthetic access$100()F
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/millennialmedia/android/AccelerometerHelper;->threshold:F

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/millennialmedia/android/AccelerometerHelper;->interval:I

    return v0
.end method

.method public static isListening()Z
    .locals 1

    .prologue
    .line 143
    sget-boolean v0, Lcom/millennialmedia/android/AccelerometerHelper;->isEnabled:Z

    return v0
.end method

.method static startListening(Lcom/millennialmedia/android/AccelerometerListener;)V
    .locals 5
    .param p0, "accelerometerListener"    # Lcom/millennialmedia/android/AccelerometerListener;

    .prologue
    const/4 v4, 0x1

    .line 37
    invoke-static {}, Lcom/millennialmedia/android/pd72c961b0f;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 39
    invoke-static {}, Lcom/millennialmedia/android/pd72c961b0f;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    sput-object v1, Lcom/millennialmedia/android/AccelerometerHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 40
    sget-object v1, Lcom/millennialmedia/android/AccelerometerHelper;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v2, Lcom/millennialmedia/android/AccelerometerHelper;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    sget-object v3, Lcom/millennialmedia/android/AccelerometerHelper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 41
    .local v0, "isAccelerometerSupported":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "Accelerometer not supported by this device. Unregistering listener."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v1, Lcom/millennialmedia/android/AccelerometerHelper;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v2, Lcom/millennialmedia/android/AccelerometerHelper;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    sget-object v3, Lcom/millennialmedia/android/AccelerometerHelper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 56
    .end local v0    # "isAccelerometerSupported":Ljava/lang/Boolean;
    :goto_0
    return-void

    .line 47
    .restart local v0    # "isAccelerometerSupported":Ljava/lang/Boolean;
    :cond_0
    sput-boolean v4, Lcom/millennialmedia/android/AccelerometerHelper;->isEnabled:Z

    .line 48
    sput-object p0, Lcom/millennialmedia/android/AccelerometerHelper;->listener:Lcom/millennialmedia/android/AccelerometerListener;

    goto :goto_0

    .line 53
    .end local v0    # "isAccelerometerSupported":Ljava/lang/Boolean;
    :cond_1
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "Null context in accelerometer helper"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static stopListening()V
    .locals 4

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/millennialmedia/android/AccelerometerHelper;->isEnabled:Z

    .line 67
    :try_start_0
    sget-object v0, Lcom/millennialmedia/android/AccelerometerHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/android/AccelerometerHelper;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/millennialmedia/android/AccelerometerHelper;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/millennialmedia/android/AccelerometerHelper;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/millennialmedia/android/AccelerometerHelper;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0
.end method
