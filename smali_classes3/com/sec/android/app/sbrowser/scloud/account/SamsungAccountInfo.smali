.class public Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final apiServerUrl:Ljava/lang/String;

.field public final authServerUrl:Ljava/lang/String;

.field public final mcc:Ljava/lang/String;

.field public final token:Ljava/lang/String;

.field public final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;->userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;->token:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;->mcc:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;->apiServerUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;->authServerUrl:Ljava/lang/String;

    return-void
.end method
