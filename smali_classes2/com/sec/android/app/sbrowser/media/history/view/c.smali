.class public final synthetic Lcom/sec/android/app/sbrowser/media/history/view/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/c;->a:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/c;->b:Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/c;->a:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/c;->b:Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->b(Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
