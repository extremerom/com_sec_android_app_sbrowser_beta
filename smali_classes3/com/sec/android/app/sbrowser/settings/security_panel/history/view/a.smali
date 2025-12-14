.class public final synthetic Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/a;->b:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/a;->c:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/a;->b:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/a;->c:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/a;->b:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/a;->c:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
