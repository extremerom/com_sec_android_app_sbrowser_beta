.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;

.field public final synthetic b:Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/Z;->a:Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/Z;->b:Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/Z;->b:Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/Z;->a:Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->b(Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;Landroid/content/DialogInterface;)V

    return-void
.end method
