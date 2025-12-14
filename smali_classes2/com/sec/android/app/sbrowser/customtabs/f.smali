.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/f;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/f;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/f;->c:Ljava/lang/Object;

    check-cast p0, LH/y;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->c(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/f;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->h(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
