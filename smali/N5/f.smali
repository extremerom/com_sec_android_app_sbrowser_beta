.class public final synthetic LN5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/r;


# static fields
.field public static final synthetic b:LN5/f;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LN5/f;

    invoke-direct {v0}, LN5/f;-><init>()V

    sput-object v0, LN5/f;->b:LN5/f;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LN5/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LN5/d;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, LN5/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetService"

    iget p0, p0, LN5/f;->a:I

    check-cast p1, LH5/b;

    check-cast p2, LR5/i;

    packed-switch p0, :pswitch_data_0

    new-instance p0, LH5/g;

    const/4 v1, 0x1

    invoke-direct {p0, v1, p2}, LH5/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LH5/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v0, LH5/c;->a:I

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 p0, 0xc

    invoke-virtual {p1, p0, p2}, LH5/e;->v0(ILandroid/os/Parcel;)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, LH5/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 p2, 0xd

    invoke-virtual {p0, p2, p1}, LH5/e;->v0(ILandroid/os/Parcel;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
