.class Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/extensions/SixDlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppItem"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mPackage:Ljava/lang/String;

.field private mSize:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;->mSize:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;->mPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;->mSize:I

    return p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;->mName:Ljava/lang/String;

    return-void
.end method
