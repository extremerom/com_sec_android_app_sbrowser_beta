.class public final synthetic LN4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP4/b;
.implements Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;
.implements Lcom/sec/terrace/base/TerraceCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    iput p4, p0, LN4/g;->a:I

    iput-object p1, p0, LN4/g;->c:Ljava/lang/Object;

    iput-object p2, p0, LN4/g;->d:Ljava/lang/Object;

    iput p3, p0, LN4/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LN4/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, LN4/g;->c:Ljava/lang/Object;

    check-cast v1, LN4/k;

    iget-object v1, v1, LN4/k;->d:LN4/d;

    const/4 v2, 0x0

    iget-object p0, p0, LN4/g;->d:Ljava/lang/Object;

    check-cast p0, LH4/k;

    invoke-virtual {v1, p0, v0, v2}, LN4/d;->a(LH4/k;IZ)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onPositiveButtonClicked(Ljava/lang/String;I)V
    .locals 2

    iget v0, p0, LN4/g;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LN4/g;->b:I

    iget-object v1, p0, LN4/g;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;

    iget-object p0, p0, LN4/g;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->b(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :pswitch_0
    iget v0, p0, LN4/g;->b:I

    iget-object v1, p0, LN4/g;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object p0, p0, LN4/g;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->t(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, LN4/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;

    iget-object v1, p0, LN4/g;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p0, p0, LN4/g;->b:I

    invoke-static {v0, v1, p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;->a(Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;Ljava/lang/String;ILjava/lang/Integer;)V

    return-void
.end method
