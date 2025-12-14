.class public final Lcom/sec/terrace/browser/webauth/TinFido2Helper$AttestationObjectParts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/webauth/TinFido2Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttestationObjectParts"
.end annotation


# instance fields
.field public authenticatorData:[B

.field public coseAlgorithm:I

.field public spki:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAll([B[BI)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/webauth/TinFido2Helper$AttestationObjectParts;->authenticatorData:[B

    iput-object p2, p0, Lcom/sec/terrace/browser/webauth/TinFido2Helper$AttestationObjectParts;->spki:[B

    iput p3, p0, Lcom/sec/terrace/browser/webauth/TinFido2Helper$AttestationObjectParts;->coseAlgorithm:I

    return-void
.end method
