.class public final synthetic Lt8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/a;->a:Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;

    iput-object p2, p0, Lt8/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lt8/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lt8/a;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lt8/a;->e:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p1

    check-cast v5, Ldb/r;

    iget-object v2, p0, Lt8/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lt8/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lt8/a;->a:Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;

    iget-object v1, p0, Lt8/a;->b:Ljava/lang/String;

    iget-boolean v4, p0, Lt8/a;->e:Z

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;->b(Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLdb/r;)Landroid/view/textclassifier/TextClassification;

    move-result-object p0

    return-object p0
.end method
