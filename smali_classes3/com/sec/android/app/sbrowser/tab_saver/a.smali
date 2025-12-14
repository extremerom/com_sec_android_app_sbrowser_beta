.class public final synthetic Lcom/sec/android/app/sbrowser/tab_saver/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_saver/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/a;->b:Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/a;->b:Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->d(Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;Ljava/lang/Void;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->e(Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;Ljava/lang/Void;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->b(Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;Ljava/lang/Void;)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/sec/terrace/TerraceState;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->c(Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;Lcom/sec/terrace/TerraceState;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->a(Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;Ljava/lang/Void;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
