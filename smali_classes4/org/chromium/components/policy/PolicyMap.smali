.class public Lorg/chromium/components/policy/PolicyMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/policy/PolicyMap$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mNativePolicyMap:J


# direct methods
.method private constructor <init>(J)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/components/policy/PolicyMap;->mNativePolicyMap:J

    return-void
.end method


# virtual methods
.method public getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    invoke-static {}, Lorg/chromium/components/policy/PolicyMapJni;->get()Lorg/chromium/components/policy/PolicyMap$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/policy/PolicyMap;->mNativePolicyMap:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/components/policy/PolicyMap$Natives;->hasValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/chromium/components/policy/PolicyMapJni;->get()Lorg/chromium/components/policy/PolicyMap$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/policy/PolicyMap;->mNativePolicyMap:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/components/policy/PolicyMap$Natives;->getBooleanValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getDictValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/chromium/components/policy/PolicyMapJni;->get()Lorg/chromium/components/policy/PolicyMap$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/policy/PolicyMap;->mNativePolicyMap:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/components/policy/PolicyMap$Natives;->getDictValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIntValue(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    invoke-static {}, Lorg/chromium/components/policy/PolicyMapJni;->get()Lorg/chromium/components/policy/PolicyMap$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/policy/PolicyMap;->mNativePolicyMap:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/components/policy/PolicyMap$Natives;->hasValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/chromium/components/policy/PolicyMapJni;->get()Lorg/chromium/components/policy/PolicyMap$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/policy/PolicyMap;->mNativePolicyMap:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/components/policy/PolicyMap$Natives;->getIntValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getListValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/chromium/components/policy/PolicyMapJni;->get()Lorg/chromium/components/policy/PolicyMap$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/policy/PolicyMap;->mNativePolicyMap:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/components/policy/PolicyMap$Natives;->getListValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/chromium/components/policy/PolicyMapJni;->get()Lorg/chromium/components/policy/PolicyMap$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/policy/PolicyMap;->mNativePolicyMap:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/components/policy/PolicyMap$Natives;->getStringValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
