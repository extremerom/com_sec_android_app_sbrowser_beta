.class public final synthetic Lcom/sec/android/app/sbrowser/tab_sync/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/d;->a:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/d;->b:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/d;->a:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/d;->b:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->g(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
