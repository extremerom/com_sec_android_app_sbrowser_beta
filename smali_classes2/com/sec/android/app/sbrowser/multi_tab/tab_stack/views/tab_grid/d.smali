.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/d;->a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/d;->b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/d;->a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/d;->b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->d(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;)V

    return-void
.end method
