.class public abstract Lc8/CM;
.super Landroid/os/Binder;
.source "IRemoteNetworkGetter.java"

# interfaces
.implements Lc8/DM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/DM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/BM;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "anetwork.channel.aidl.IRemoteNetworkGetter"

.field static final TRANSACTION_get:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "anetwork.channel.aidl.IRemoteNetworkGetter"

    invoke-virtual {p0, p0, v0}, Lc8/CM;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lc8/DM;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string/jumbo v1, "anetwork.channel.aidl.IRemoteNetworkGetter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lc8/DM;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lc8/DM;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lc8/BM;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lc8/BM;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string/jumbo v2, "anetwork.channel.aidl.IRemoteNetworkGetter"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v2, "anetwork.channel.aidl.IRemoteNetworkGetter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lc8/CM;->get(I)Lc8/XM;

    move-result-object v1

    .line 51
    .local v1, "_result":Lc8/XM;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lc8/XM;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v2, v3

    .line 53
    goto :goto_0

    .line 52
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
