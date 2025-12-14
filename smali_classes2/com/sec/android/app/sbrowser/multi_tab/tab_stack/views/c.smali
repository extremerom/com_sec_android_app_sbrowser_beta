.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/c;->a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/c;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/c;->a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/c;->b:I

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->b(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;ILandroid/content/DialogInterface;I)V

    return-void
.end method
