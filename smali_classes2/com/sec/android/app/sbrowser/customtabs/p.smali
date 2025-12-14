.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;ILcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->d:Ljava/lang/Object;

    iput p3, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->b:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->c:Ljava/lang/Object;

    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->b:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->b:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->c:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v2, v0, v1, v3, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->e(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->d:Ljava/lang/Object;

    check-cast v0, LH/y;

    iget v1, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->b:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->c:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->e:Ljava/lang/Object;

    check-cast v3, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/p;->f:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-static {v2, v0, v1, v3, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->b(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;ILcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
