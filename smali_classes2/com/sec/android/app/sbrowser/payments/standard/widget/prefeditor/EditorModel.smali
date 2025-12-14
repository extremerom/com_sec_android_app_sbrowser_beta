.class public Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCancelCallback:Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDoneCallback:Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->mTitle:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->mFields:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addField(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->mFields:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->mCancelCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->mDoneCallback:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->mCancelCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public done()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->mDoneCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->mDoneCallback:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->mCancelCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public getFields()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->mFields:Ljava/util/List;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public isDuplicatedItem()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isModified()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public removeAllFields()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->mFields:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setCancelCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->mCancelCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setDoneCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->mDoneCallback:Ljava/lang/Runnable;

    return-void
.end method
