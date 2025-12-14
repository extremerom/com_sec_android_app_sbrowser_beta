.class Lorg/chromium/url/OriginJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/url/Origin$Natives;


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

.method public static get()Lorg/chromium/url/Origin$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/url/OriginJni;

    invoke-direct {v0}, Lorg/chromium/url/OriginJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public assignNativeOrigin(Ljava/lang/String;Ljava/lang/String;SZJJJ)V
    .locals 0

    invoke-static/range {p1 .. p10}, LJ/N;->MezQEMnp(Ljava/lang/Object;Ljava/lang/Object;SZJJJ)V

    return-void
.end method

.method public createOpaque()Lorg/chromium/url/Origin;
    .locals 0

    invoke-static {}, LJ/N;->MWkeKQbk()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/url/Origin;

    return-object p0
.end method
