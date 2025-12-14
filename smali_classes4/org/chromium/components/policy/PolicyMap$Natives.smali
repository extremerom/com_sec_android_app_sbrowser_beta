.class public interface abstract Lorg/chromium/components/policy/PolicyMap$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/policy/PolicyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract getBooleanValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)Z
    .annotation runtime Lorg/jni_zero/NativeClassQualifiedName;
    .end annotation
.end method

.method public abstract getDictValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Lorg/jni_zero/NativeClassQualifiedName;
    .end annotation
.end method

.method public abstract getIntValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)I
    .annotation runtime Lorg/jni_zero/NativeClassQualifiedName;
    .end annotation
.end method

.method public abstract getListValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Lorg/jni_zero/NativeClassQualifiedName;
    .end annotation
.end method

.method public abstract getStringValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Lorg/jni_zero/NativeClassQualifiedName;
    .end annotation
.end method

.method public abstract hasValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)Z
    .annotation runtime Lorg/jni_zero/NativeClassQualifiedName;
    .end annotation
.end method
