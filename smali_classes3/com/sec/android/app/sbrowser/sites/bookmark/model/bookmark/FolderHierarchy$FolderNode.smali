.class Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderNode"
.end annotation


# instance fields
.field private mFolderName:Ljava/lang/String;

.field private final mId:J

.field private mParent:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;->mId:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;->mId:J

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;->mFolderName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;->mParent:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;->mFolderName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;->mId:J

    return-wide v0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;->mParent:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;

    return-object p0
.end method


# virtual methods
.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;->mFolderName:Ljava/lang/String;

    return-void
.end method

.method public setParent(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;->mParent:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/FolderHierarchy$FolderNode;

    return-void
.end method
