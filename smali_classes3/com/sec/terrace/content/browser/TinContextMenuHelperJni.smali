.class public Lcom/sec/terrace/content/browser/TinContextMenuHelperJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/content/browser/TinContextMenuHelper$Natives;


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

.method public static get()Lcom/sec/terrace/content/browser/TinContextMenuHelper$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/content/browser/TinContextMenuHelperJni;

    invoke-direct {v0}, Lcom/sec/terrace/content/browser/TinContextMenuHelperJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onContextMenuClosed(JLcom/sec/terrace/content/browser/TinContextMenuHelper;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M93u5rMu(JLjava/lang/Object;)V

    return-void
.end method

.method public onContextMenuShown(JLcom/sec/terrace/content/browser/TinContextMenuHelper;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MUwIXPxy(JLjava/lang/Object;Z)V

    return-void
.end method
