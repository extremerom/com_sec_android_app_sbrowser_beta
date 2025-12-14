.class public final synthetic Lcom/sec/android/app/sbrowser/toolbar/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$Listener;
.implements Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/toolbar/c;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/c;->c:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentFetched(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/c;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/c;->c:Landroid/view/KeyEvent$Callback;

    move-object v2, p0

    check-cast v2, Landroid/widget/TextView;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->b(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;Landroid/widget/TextView;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/c;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/c;->c:Landroid/view/KeyEvent$Callback;

    move-object v2, p0

    check-cast v2, Landroid/widget/TextView;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->d(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;Landroid/widget/TextView;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClicked(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/c;->c:Landroid/view/KeyEvent$Callback;

    check-cast v0, Lm/l;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Listener;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->c(Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Listener;Lm/l;I)V

    return-void
.end method
