.class public Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Terms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;,
        Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;
    }
.end annotation


# instance fields
.field private mOpt:Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

.field private mPn:Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

.field private mTos:Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;->mPn:Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;->mTos:Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;->mOpt:Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;-><init>(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;->mOpt:Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;->mPn:Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;->mTos:Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    return-object p0
.end method
