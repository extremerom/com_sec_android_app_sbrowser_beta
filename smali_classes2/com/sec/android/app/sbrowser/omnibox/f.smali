.class public final synthetic Lcom/sec/android/app/sbrowser/omnibox/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/omnibox/f;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/f;->b:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/omnibox/f;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/f;->b:Landroid/view/KeyEvent$Callback;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->x(Lcom/sec/android/app/sbrowser/webapp/WebappActivity;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->d(Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
