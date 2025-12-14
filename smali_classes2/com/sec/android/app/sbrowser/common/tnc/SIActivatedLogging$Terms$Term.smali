.class Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Term"
.end annotation


# instance fields
.field private mTimestamp:J

.field private mVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;->mVersion:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;->mTimestamp:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;->mTimestamp:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;->mVersion:Ljava/lang/String;

    return-object p0
.end method
