.class public Lorg/chromium/content/browser/ClientDataJsonImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/ClientDataJsonImpl$Natives;


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

.method public static get()Lorg/chromium/content/browser/ClientDataJsonImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/ClientDataJsonImplJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/ClientDataJsonImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public buildClientDataJson(ILjava/lang/String;[BZLjava/nio/ByteBuffer;Ljava/lang/String;Lorg/chromium/url/Origin;)Ljava/lang/String;
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->M_2Rd_$Y(ILjava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
