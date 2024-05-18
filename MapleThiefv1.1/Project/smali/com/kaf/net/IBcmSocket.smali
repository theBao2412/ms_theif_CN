.class public abstract Lcom/kaf/net/IBcmSocket;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;CZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;CZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;CZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;CZI)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeepAlive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getReceiveBufferSize()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReuseAddress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSoLinger()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSoTimeout()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read([B)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setKeepAlive(Z)V
    .locals 0

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 0

    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 0

    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 0

    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 0

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 0

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 0

    return-void
.end method

.method public shutdownInput()V
    .locals 0

    return-void
.end method

.method public shutdownOutput()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public write([B)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public write([BII)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public write([BIIZ)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
