.class Lorg/chromium/url/GURLJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/url/GURL$Natives;


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

.method public static get()Lorg/chromium/url/GURL$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/url/GURLJni;

    invoke-direct {v0}, Lorg/chromium/url/GURLJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getOrigin(Lorg/chromium/url/GURL;Lorg/chromium/url/GURL;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MNBd3mFA(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public init(Ljava/lang/String;Lorg/chromium/url/GURL;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MWBVWQ0I(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public initNative(Ljava/lang/String;ZJJ)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->Mj53uQ6$(Ljava/lang/Object;ZJJ)V

    return-void
.end method
