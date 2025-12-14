.class public abstract Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mEditorDialog:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public edit(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public setEditorDialog(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mEditorDialog:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    return-void
.end method
