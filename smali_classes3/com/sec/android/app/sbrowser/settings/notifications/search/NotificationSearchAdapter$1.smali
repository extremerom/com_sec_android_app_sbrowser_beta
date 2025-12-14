.class Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

.field final synthetic val$itemView:Landroid/view/View;

.field final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter$1;->val$itemView:Landroid/view/View;

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter$1;->val$itemView:Landroid/view/View;

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter$1;->val$position:I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->a(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;)I

    move-result v1

    invoke-static {p1, v0, p0, v1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->b(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;Landroid/view/View;IIZ)V

    return-void
.end method
