.class Lorg/chromium/content/browser/webcontents/WebContentsObserverProxyJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy$Natives;


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

.method public static get()Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxyJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxyJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(JLorg/chromium/content/browser/webcontents/WebContentsObserverProxy;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M7giG0Ri(JLjava/lang/Object;)V

    return-void
.end method

.method public init(Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;Lorg/chromium/content/browser/webcontents/WebContentsImpl;)J
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MTpUzW91(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method
