.class public Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mOpt:Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

.field private mPn:Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

.field private mTos:Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;->mPn:Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;->mTos:Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;->mOpt:Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;-><init>(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;I)V

    return-object v0
.end method

.method public setPn(Ljava/lang/String;J)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;-><init>(Ljava/lang/String;JI)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;->mPn:Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    return-object p0
.end method

.method public setTos(Ljava/lang/String;J)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;-><init>(Ljava/lang/String;JI)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;->mTos:Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    return-object p0
.end method
