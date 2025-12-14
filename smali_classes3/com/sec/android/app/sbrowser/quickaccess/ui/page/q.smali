.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/q;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/q;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/q;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/q;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebEditText;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/q;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->z(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebEditText;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
