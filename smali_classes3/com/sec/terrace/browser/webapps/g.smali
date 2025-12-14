.class public final synthetic Lcom/sec/terrace/browser/webapps/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lorg/chromium/base/Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/g;->a:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/g;->a:Lorg/chromium/base/Callback;

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->d(Lorg/chromium/base/Callback;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
