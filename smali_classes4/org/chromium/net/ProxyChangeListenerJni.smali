.class Lorg/chromium/net/ProxyChangeListenerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/ProxyChangeListener$Natives;


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

.method public static get()Lorg/chromium/net/ProxyChangeListener$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/net/ProxyChangeListenerJni;

    invoke-direct {v0}, Lorg/chromium/net/ProxyChangeListenerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public proxySettingsChanged(JLorg/chromium/net/ProxyChangeListener;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MCIk73GZ(JLjava/lang/Object;)V

    return-void
.end method

.method public proxySettingsChangedTo(JLorg/chromium/net/ProxyChangeListener;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->MyoFZt$2(JLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
