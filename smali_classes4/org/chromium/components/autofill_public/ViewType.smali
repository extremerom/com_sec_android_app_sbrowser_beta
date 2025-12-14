.class public Lorg/chromium/components/autofill_public/ViewType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/chromium/components/autofill_public/ViewType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAutofillId:Landroid/view/autofill/AutofillId;

.field public final mComputedType:Ljava/lang/String;

.field private mServerPredictions:[Ljava/lang/String;

.field public final mServerType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/components/autofill_public/ViewType$1;

    invoke-direct {v0}, Lorg/chromium/components/autofill_public/ViewType$1;-><init>()V

    sput-object v0, Lorg/chromium/components/autofill_public/ViewType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/chromium/components/autofill_public/ViewType;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Lorg/chromium/components/autofill_public/ViewType;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/autofill_public/ViewType;->mServerType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/autofill_public/ViewType;->mComputedType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/chromium/components/autofill_public/ViewType;->mServerPredictions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/autofill_public/ViewType;->mAutofillId:Landroid/view/autofill/AutofillId;

    iput-object p2, p0, Lorg/chromium/components/autofill_public/ViewType;->mServerType:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/components/autofill_public/ViewType;->mComputedType:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/components/autofill_public/ViewType;->mServerPredictions:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/autofill_public/ViewType;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/components/autofill_public/ViewType;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, p1, p2}, Landroid/view/autofill/AutofillId;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lorg/chromium/components/autofill_public/ViewType;->mServerType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/chromium/components/autofill_public/ViewType;->mComputedType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/chromium/components/autofill_public/ViewType;->mServerPredictions:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
