.class Lcom/sec/terrace/browser/prefs/TinLocationSettingsJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/prefs/TinLocationSettings$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/prefs/TinLocationSettings$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/prefs/TinLocationSettingsJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/prefs/TinLocationSettingsJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onLocationSettingsDialogOutcome(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MQ1ZK_4_(JI)V

    return-void
.end method
