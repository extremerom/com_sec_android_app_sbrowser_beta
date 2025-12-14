.class public Lorg/chromium/content_public/common/ResourceRequestBodyJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/common/ResourceRequestBody$Natives;


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

.method public static get()Lorg/chromium/content_public/common/ResourceRequestBody$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content_public/common/ResourceRequestBodyJni;

    invoke-direct {v0}, Lorg/chromium/content_public/common/ResourceRequestBodyJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createResourceRequestBodyFromBytes([B)[B
    .locals 0

    invoke-static {p1}, LJ/N;->MugoAW_d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method
