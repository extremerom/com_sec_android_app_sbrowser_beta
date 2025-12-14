.class public final Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final apiServerUrl:Ljava/lang/String;

.field public final authServerUrl:Ljava/lang/String;

.field public final authToken:Ljava/lang/String;

.field public final authTokenExpiredTime:J

.field public final id:Ljava/lang/String;

.field public final lastUpdateTime:J

.field private final mFull:Ljava/lang/String;

.field public final refreshToken:Ljava/lang/String;

.field public final refreshTokenExpiredTime:J

.field public final type:Ljava/lang/String;

.field public final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authToken:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authTokenExpiredTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->refreshToken:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->refreshTokenExpiredTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authServerUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->apiServerUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->lastUpdateTime:J

    invoke-static {v0, v1, v2}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->mFull:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->e(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->j(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->userId:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->i(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->type:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->c(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->d(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authTokenExpiredTime:J

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->g(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->refreshToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->h(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->refreshTokenExpiredTime:J

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->b(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authServerUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->a(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->apiServerUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->f(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->lastUpdateTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->e(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->i(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->c(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->mFull:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;-><init>(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->type:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authToken:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->mFull:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authTokenExpiredTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->refreshToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->refreshTokenExpiredTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authServerUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->apiServerUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->lastUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
