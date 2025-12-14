.class public Lorg/chromium/components/signin/identitymanager/IdentityManagerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/signin/identitymanager/IdentityManager$Natives;


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

.method public static get()Lorg/chromium/components/signin/identitymanager/IdentityManager$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/signin/identitymanager/IdentityManagerJni;

    invoke-direct {v0}, Lorg/chromium/components/signin/identitymanager/IdentityManagerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAccountsWithRefreshTokens(J)[Lorg/chromium/components/signin/base/CoreAccountInfo;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MZ$avMgt(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/chromium/components/signin/base/CoreAccountInfo;

    return-object p0
.end method
