.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentBlockInitData"
.end annotation


# instance fields
.field private mAppSize:I

.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mErrApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->mType:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;IILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->mBuffer:Ljava/nio/ByteBuffer;

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->mAppSize:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->mType:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->mErrApps:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;ILjava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;-><init>(Ljava/nio/ByteBuffer;IILjava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->mErrApps:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getAppSize()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->mAppSize:I

    return p0
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->mBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getErrApps()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->mErrApps:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFilterDataManager$ContentBlockInitData;->mType:I

    return p0
.end method
