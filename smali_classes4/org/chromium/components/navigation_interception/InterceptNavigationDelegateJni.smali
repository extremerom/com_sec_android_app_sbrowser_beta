.class public Lorg/chromium/components/navigation_interception/InterceptNavigationDelegateJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate$Natives;


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

.method public static get()Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/navigation_interception/InterceptNavigationDelegateJni;

    invoke-direct {v0}, Lorg/chromium/components/navigation_interception/InterceptNavigationDelegateJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onShouldIgnoreNavigationResult(Lorg/chromium/content_public/browser/WebContents;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MyCmcUgV(Ljava/lang/Object;Z)V

    return-void
.end method
