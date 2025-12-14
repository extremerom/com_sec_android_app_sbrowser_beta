.class public Lorg/chromium/components/policy/PolicyMapJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/policy/PolicyMap$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/components/policy/PolicyMap$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/policy/PolicyMapJni;

    invoke-direct {v0}, Lorg/chromium/components/policy/PolicyMapJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getBooleanValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MG3FgY5r(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDictValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MKY_klU2(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getIntValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MNIDvfzY(JLjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getListValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MQRev50_(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getStringValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MEWWQoKk(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hasValue(JLorg/chromium/components/policy/PolicyMap;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MImr1kgV(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
