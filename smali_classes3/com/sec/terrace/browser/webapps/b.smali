.class public final synthetic Lcom/sec/terrace/browser/webapps/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/browser/webapps/b;->a:I

    iput-object p2, p0, Lcom/sec/terrace/browser/webapps/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/terrace/browser/webapps/b;->a:I

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->a(Ljava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;

    invoke-static {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->b(Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
