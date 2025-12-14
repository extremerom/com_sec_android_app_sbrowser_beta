.class public final synthetic Lorg/chromium/webapk/lib/client/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:[Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>([Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/webapk/lib/client/a;->a:[Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;

    iput-object p2, p0, Lorg/chromium/webapk/lib/client/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/webapk/lib/client/a;->a:[Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;

    iget-object p0, p0, Lorg/chromium/webapk/lib/client/a;->b:Landroid/content/Context;

    invoke-static {v0, p0}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->a([Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;Landroid/content/Context;)V

    return-void
.end method
