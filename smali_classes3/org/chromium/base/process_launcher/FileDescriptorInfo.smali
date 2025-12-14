.class public final Lorg/chromium/base/process_launcher/FileDescriptorInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation build Lorg/chromium/build/annotations/UsedByReflection;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/chromium/base/process_launcher/FileDescriptorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final fd:Landroid/os/ParcelFileDescriptor;

.field public final id:I

.field public final offset:J

.field public final size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/base/process_launcher/FileDescriptorInfo$1;

    invoke-direct {v0}, Lorg/chromium/base/process_launcher/FileDescriptorInfo$1;-><init>()V

    sput-object v0, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->id:I

    iput-object p2, p0, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->fd:Landroid/os/ParcelFileDescriptor;

    iput-wide p3, p0, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->offset:J

    iput-wide p5, p0, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->size:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->id:I

    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->offset:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->size:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->fd:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->offset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
