.class public Lcom/samsung/android/sdk/bixby2/LogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_ENGINEERING_MODE:Ljava/lang/String; = "engineeringMode"

.field private static final PREFIX_IUG:Ljava/lang/String; = "IUG# "

.field private static sEngineeringMode:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/bixby2/LogUtil;->sEngineeringMode:Z

    if-eqz v0, :cond_0

    const-string v0, "IUG# "

    invoke-static {v0, p1, p0}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setEngineeringMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/sdk/bixby2/LogUtil;->sEngineeringMode:Z

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
